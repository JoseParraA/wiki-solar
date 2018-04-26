$(document).ready(function(){
var $results = $("h2").text();


  $.ajax({
      type: "GET",
      url: "http://en.wikipedia.org/w/api.php?action=parse&format=json&prop=text&section=0&page=" + $results + "&callback=?",
      contentType: "application/json; charset=utf-8",
      async: false,
      dataType: "json",
      // let search =
      success: function (data, textStatus, jqXHR) {

        var result = $("<h1></h1>").text(data);
        $(".system").append(data.parse.text["*"]);

          // console.log(data.parse.text["*"]);

          // let links = $('a');
          // console.log(links);

          var paras = $('p').text();
          //debugger;
        // console.log(paras);
          //debugger;
          $(".solar-system").append(paras);
      },
      error: function (errorMessage) {
      }
  });
});

// http://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exlimit=max&explaintext&exintro&titles=Yahoo|Google&redirects=
