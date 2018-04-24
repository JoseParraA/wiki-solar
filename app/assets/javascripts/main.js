console.log(THREE);

let cube = null; // cube
let planet = null; // sphere
let pointLight = null;
// let pointLightTwo = null;


let step = 0;
let controls = null;
let gui = null;
let planetsThrees = [] // electrons
let gbPlanetsArray = []

const renderer = new THREE.WebGLRenderer({
  antialias: true
});

// renderer.shadowMap.enabled = true;
renderer.setPixelRatio(window.devicePixelRatio || 1);

const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera(
  45,
  window.innerWidth / window.innerHeight,
  0.1,
  1000
);

camera.position.x = -30;
camera.position.y = 30;
camera.position.z = 30;
camera.lookAt(scene.position);

// when we add new before the creation of a function it does two things WRT "this":
// It sets "this" to a new empty function
// It automatically returns the keyword "this" (ie that empty object)
const controller = new function () {
  this.rotationSpeed = 0.05;
}


const animate = () => {
console.log(gbPlanetsArray);
// debugger;
  // console.log(electrons.length);
  increment = controller.rotationSpeed / 100
  step += increment;
  cube.rotation.x += increment
  cube.rotation.y += increment
  cube.rotation.z += increment


  for (var i = 0; i < planetsThrees.length; i++) {
    let period = gbPlanetsArray[i].orbit_sun
    a = 5 * ( 1 + i )  // orbital distance
    planetsThrees[i].position.z = ( a * (Math.sin(step / period / a * 100 )))
    planetsThrees[i].position.x = ( 1 * a * (Math.cos(step / period /  a* 100 )))
    planetsThrees[i].position.y = ((1 ) * a * (Math.cos(step / period / a * 100 )))

  }

  // change position of meshes
  // change rotation of mesh
  // rerender using the scene and the camera
  renderer.render(scene, camera);
  //showing the user the updated scene
  requestAnimationFrame(animate);
}


const addAxes = () => {
  const axes = new THREE.AxesHelper(20);
  scene.add(axes);
};


const addPointLight = () => {
  pointLight = new THREE.PointLight(0xffff00, 3, 200);
  // pointLight.position.set(-40, 60, 20)
  pointLight.position.x = 0;
  pointLight.position.y = 0;
  pointLight.position.z = 0;
  pointLight.castShadow = true;
  pointLight.shadow.mapSize.width = 2048;
  pointLight.shadow.mapSize.height = 2048;
  scene.add(pointLight)
}

const addCube = () => {
  //1 create material
  //2 create geomoetry
  //3 create mesh (from geometry and material)
  //4 add mesh to scene
  //5 re-render (scene and camera)
  const cubeMaterial = new THREE.MeshBasicMaterial({
    color: 0xfdcf00

    // wireframe: true
  });
  const cubeGeometry = new THREE.SphereGeometry(2,20,20);

  cube = new THREE.Mesh(cubeGeometry, cubeMaterial);
  cube.position.x = 0
  cube.position.y = 0
  cube.position.z = 0

  cube.castShadow = false;
  scene.add(cube)
}

const addPlanet = (size) => {

  //
  // console.log(`The array of planets is ${planets}. No error trapping for wrong format`);

  const sphereGeometry = new THREE.SphereGeometry(size, 200, 200);
  const sphereMaterial = new THREE.MeshLambertMaterial({
    color: 0x00a3ff
  })

  planet = new THREE.Mesh(sphereGeometry, sphereMaterial)
  planet.position.x = 0
  planet.position.y = 0
  planet.position.z = 0


  planet.castShadow = true;
  planet.receiveShadow = true;

  scene.add(planet)

  planetsThrees.push(planet)



}

const addPlane = () => {
  //Mesh is geometry AND material
  const planeGeometry = new THREE.PlaneGeometry(100, 100);
  const planeMaterial = new THREE.MeshLambertMaterial({
    color: 0x000000,
    side: THREE.DoubleSide,
    // wireframe: true
  });
  const plane = new THREE.Mesh(planeGeometry, planeMaterial);
  plane.rotation.x = -0.5 * Math.PI;
  plane.position.x = 20;
  plane.position.y = -70;
  plane.position.z = 0;


  plane.receiveShadow = true;
  scene.add(plane)

}



const init = (planetsArray) => {
console.log(planetsArray);
gbPlanetsArray = planetsArray


    //   for (var i = 0; i < e.length; i++) {
    //   // console.log(e[i].radius_planet);
    //   radiusPlanet.push(e[i].radius_planet);
    //   console.log(radiusPlanet[i]);
    //   }
    //
    // const distanceSun = []
    //
    //   for (var i = 0; i < e.length; i++) {
    //   distanceSun.push(e[i].distance_sun);
    //   console.log(distanceSun[i]);
    //   }
    //
    // const orbitSun = []
    //
    //   for (var i = 0; i < e.length; i++) {
    //   orbitSun.push(e[i].orbit_sun);
    //   console.log(orbitSun[i]);
    //   }


      // debugger;
  renderer.setClearColor( 0x000000);
  // renderer.setSize(window.innerWidth / 2, window.innerHeight / 2)

  // this.composer = new THREE.EffectComposer(this.renderer3D);
  //
  // if(instance.renderer3D)
  //   instance.renderer3D.setSize(instance.dom.clientWidth, instance.dom.clientHeight);
  // if(instance.composer)
  //   instance.composer.setSize(instance.dom.clientWidth, instance.dom.clientHeight)


   addAxes();
  // addPlane();
  addCube();

for (var i = 0; i < planetsArray.length; i++) {
  let p = planetsArray[i]
  let r = ((p.radius_planet)**1)/20000
  addPlanet(r);
}


  addPointLight();



  controls = new THREE.OrbitControls(camera, renderer.domElement);
  // This is for mouse control over rotation and closeness

  // render the scene
  renderer.render(scene, camera);



  document.querySelector('#solar').appendChild(renderer.domElement)
  // this is code from Three JS code along. my preference would be to replace this with a JQuery selector,
  // but I will leave as is for now.

  gui = new dat.GUI();
  gui.add(controller, "rotationSpeed", 0, 1);
  // gui.add(controller, "bouncingSpeed", 0, 0.05);




  animate();

};




const onResize = () => {
  // change aspect ratio of the camera
  camera.aspect = window.innerWidth / window.innerHeight
  // update positions of the shapes
  camera.updateProjectionMatrix();
  // update the size of the render
  // renderer.setSize(window.innerWidth, window.innerHeight)
  renderer.setSize(window.innerWidth, window.innerHeight)

};

window.addEventListener("resize", onResize);




$(document).ready( function() {
  console.log("jquery ready");

  if ( $('#solar').length ) {
    // the following code will run IFF '#rotatingElement' exists on the current page.
    // if it exists as an empty div (on the element show page), before any content is added it will have length = 0
    // on other poages, it doesnt exist, it's null and therefore has no length.
    console.log("element show page... rendering three.js element");

    n = $('#solar').data('planets')
    init(n);

  }

})
