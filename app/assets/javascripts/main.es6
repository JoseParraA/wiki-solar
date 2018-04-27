console.log(THREE);

let cube = null; // cube
let planet = null; // sphere
let pointLight = null;

let step = 0;
let controls = null;
let gui = null;
let planetsThrees = [] // planets
let gbPlanetsArray = []


////// CAMERA POSITION ///////////////////////

const renderer = new THREE.WebGLRenderer({
  antialias: true
});

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

  let increment = controller.rotationSpeed / 100
  step += increment;
  cube.rotation.x += increment
  cube.rotation.y += increment
  cube.rotation.z += increment


//////TIME TO GO AROUND THE SUN ////////////////////////

  for (var i = 0; i < planetsThrees.length; i++) {
   let period = gbPlanetsArray[i].orbit_sun
   let a = 5 * ( 1 + i )  // orbital distance
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

///////// POINT OF LIGTH //////////////////////////////

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

////////   SUN FUNCTION  //////////////////////////////

  const cubeGeometry = new THREE.SphereGeometry(5,20,20); // Size

  cube = new THREE.Mesh(cubeGeometry, cubeMaterial); // position
  cube.position.x = 0
  cube.position.y = 0
  cube.position.z = 0

  cube.castShadow = false;
  scene.add(cube)
}

const addPlanet = (size, sphereColor) => {


  console.log("inside addPlanet: ", sphereColor);
  const sphereGeometry = new THREE.SphereGeometry(size, 200, 200);
  const sphereMaterial = new THREE.MeshBasicMaterial({
    color: sphereColor
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

////// ADD PLANE ////////////////////////////////////////

const addPlane = () => {
  //Mesh is geometry AND material
  const planeGeometry = new THREE.PlaneGeometry(100, 100);
  const planeMaterial = new THREE.MeshLambertMaterial({
    color: 0x000000,
    side: THREE.DoubleSide,
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



  // CANVAS SIZE 1:

  renderer.setClearColor( 0x000000);
  onResize();
  // addAxes();
  addCube();

    for (var i = 0; i < planetsArray.length; i++) {
      let sphereColor = rgbToHex( (300 / planetsArray.length * ( i + 1 )), (240 / planetsArray.length * ( i + 1 )),150); // loooping to change the color of the planets
      let p = planetsArray[i]
      let r = ((p.radius_planet))**1/20000
      console.log(r, sphereColor);
      addPlanet(r, sphereColor);
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

  animate();

};

function rgbToHex(r, g, b) {
    return "#" + ((1 << 24) + (r << 16) + (g << 8) + b).toString(16).toUpperCase().slice(1);
}



// CANVAS BROWSER RE-SIZE:
const onResize = () => {
  console.log(window.innerWidth);
  // change aspect ratio of the camera
  camera.aspect = window.innerWidth / window.innerHeight
  // update positions of the shapes
  camera.updateProjectionMatrix();
  // update the size of the render
  // renderer.setSize(window.innerWidth, window.innerHeight)
  renderer.setSize(window.innerWidth - 100, window.innerHeight)

};

window.addEventListener("resize", onResize);




$(document).ready( function() {
  console.log("jquery ready");

  if ( $('#solar').length ) {
    console.log("element show page... !!!rendering three.js element");

    let n = $('#solar').data('planets')
    init(n);

  }

})
