require("./test_helper")

require("../src/popup")
require("../src/jquery.popup")

popupText = "Hello there, why would you want to test it?"

describe "Popup", ->
  beforeEach ->
    $("body").empty()

  context "when called manually", ->
    it "adds popup element to document body", ->
      AwesomePopup(popupText)

      assert_open_popup()

  context "when set up via jQuery plugin", ->
    beforeEach ->
      @link = $("<a />", class: "popup-trigger", text: "Open popup")
      $(document).find("body").append(@link)

      @link.popup(popupText)


    it "adds popup element to document body", ->
      @link.click()

      assert_open_popup()

  context "when close button clicked", ->
    beforeEach ->
      AwesomePopup(popupText)
      $(".popup .close").click()

    it "removes popup from DOM", ->
      assert.equal($(".popup").length, 0)


assert_open_popup = ->
  actual = $("body").find(".popup .content").text()
  expected = popupText

  assert.equal(actual, expected)
