<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <title>Welcome to The Boot Closet&trade;</title>
    <link rel="stylesheet" type="text/css" href="boot.closet.css">
    <script type="text/javascript"
            src="../../scripts/jquery-1.2.1.js"></script>
    <script type="text/javascript"
            src="jquery.jqia.selects.js"></script>
    <script type="text/javascript"
            src="jquery.jqia.termifier.js"></script>
    <script type="text/javascript">
      $(function(){
        $('#styleDropdown')
          .change(function(){
            var styleValue = $(this).val();
            $('#detailsDisplay').load(
              'getDetails.jsp',
              { style: styleValue },
              function(){
                $('abbr').termifier({
                  lookupResource: 'getTerm.jsp'
                });
              }
            );
            adjustColorDropdown();
          })
          .change();
        $('#colorDropdown')
          .change(function(){ adjustSizeDropdown();});
      });

      function adjustColorDropdown() {
        var styleValue = $('#styleDropdown').val();
        var dropdownSet = $('#colorDropdown');
        if (styleValue.length == 0) {
          dropdownSet.attr("disabled",true);
          dropdownSet.emptySelect();
          adjustSizeDropdown();
        }
        else {
          dropdownSet.attr("disabled",false);
          $.getJSON(
            'getColors.jsp',
            {style:styleValue},
            function(data){
              dropdownSet.loadSelect(data);
              adjustSizeDropdown();
            }
          );
        }
      }

      function adjustSizeDropdown() {
        var styleValue = $('#styleDropdown').val();
        var colorValue = $('#colorDropdown').val();
        var dropdownSet = $('#sizeDropdown');
        if ((styleValue.length == 0)||(colorValue.length == 0) ) {
          dropdownSet.attr("disabled",true);
          dropdownSet.emptySelect();
        }
        else {
          dropdownSet.attr("disabled",false);
          $.getJSON(
            'getSizes.jsp',
            {style:styleValue,color:colorValue},
            function(data){dropdownSet.loadSelect(data)}
          );
        }
      }
    </script>
  </head>

  <body id="bootCloset3">
    <img id="banner" src="boot.closet.branding.png"/>
    <form action="" id="orderForm">
      <div id="detailFormContainer">
        <h1>Choose your boots</h1>
        <div id="cascadingDropdowns">
          <div>
            <label>Please choose a style:</label><br/>
            <select id="styleDropdown">
              <option value="">Please choose a boot style</option>
              <option value="7177382">Caterpillar Tradesman Work Boot</option>
              <option value="7269643">Caterpillar Logger Boot</option>
              <option value="7141832">Chippewa 17" Engineer Boot</option>
              <option value="7141833">Chippewa 17" Snakeproof Boot</option>
              <option value="7173656">Chippewa 11" Engineer Boot</option>
              <option value="7141922">Chippewa Harness Boot</option>
              <option value="7141730">Danner Foreman Pro Work Boot</option>
              <option value="7257914">Danner Grouse GTX Boot</option>
            </select>
          </div>
          <div>
            <label>Color:</label><br/>
            <select id="colorDropdown" disabled="disabled"></select>
          </div>
          <div>
            <label>Size:</label><br/>
            <select id="sizeDropdown" disabled="disabled"></select>
          </div>
        </div>
        <div id="detailsDisplay"></div>
      </div>
    </form>
  </body>
</html>
