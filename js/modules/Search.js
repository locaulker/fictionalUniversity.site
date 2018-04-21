import $ from 'jquery';


class Search {
  // 1. section where you describe and create/initiate our object
  constructor() {
    this.openButton = $(".js-search-trigger");
    this.closeButton = $(".search-overlay__close");
    this.searchOverlay = $(".search-overlay");
    this.events();
    this.isOverlayOpen = false;
  }

  // 2. Events for this class
  events() {
    this.openButton.on("click", this.openOverlay.bind(this));
    this.closeButton.on("click", this.closeOverlay.bind(this));
    $(document).on("keydown", this.keyPressDispatcher.bind(this));
  }


  // 3. Methods (functions, actions ...)
  openOverlay() {
    this.searchOverlay.addClass("search-overlay--active");
    $("body").addClass("body-no-scroll");
    console.log("Our open method just ran");
    this.isOverlayOpen = true;
  }

  closeOverlay() {
    this.searchOverlay.removeClass("search-overlay--active");
    $("body").removeClass("body-no-scroll");
    console.log("Our close method just ran");
    this.isOverlayOpen = false;
  }

  keyPressDispatcher(e) {
    if(e.keyCode == 83 && !this.isOverlayOpen) {
      this.openOverlay();
    }

    if(e.keyCode == 27 && this.isOverlayOpen) {
      this.closeOverlay();
    }
  }
}

export default Search;