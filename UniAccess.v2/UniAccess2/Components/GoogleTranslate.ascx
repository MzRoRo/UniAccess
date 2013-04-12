<%@ Control Language="C#" AutoEventWireup="true" CodeFile="GoogleTranslate.ascx.cs" Inherits="Components_GoogleTranslate" %>

<div id="google_translate_element"></div><script type="text/javascript">
      (function () {
          try {
              //<meta name="google-translate-customization" content="85b2bd965a74064c-37e46499a42b8df2-g0e456ebc8ef30cf8-9"></meta>
              var transMeta = document.createElement("meta");
              transMeta.name = "google-translate-customization";
              transMeta.content = "85b2bd965a74064c-37e46499a42b8df2-g0e456ebc8ef30cf8-9";
              document.head.appendChild(transMeta);
          } catch (e) {
              try { console.log("Unable to initialize google translate :: "+e.message); } catch (b) { }
          }
      })();
      
      function googleTranslateElementInit() {
          new google.translate.TranslateElement({ pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE }, 'google_translate_element');
      }
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>