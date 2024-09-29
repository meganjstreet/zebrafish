# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true

pin "masonry-layout" # @4.2.2
pin "desandro-matches-selector" # @2.0.2
pin "ev-emitter" # @1.1.1
pin "fizzy-ui-utils" # @2.0.7
pin "get-size" # @2.0.3
pin "outlayer" # @2.1.1
pin "imagesloaded" # @5.0.0
pin "@splidejs/splide", to: "@splidejs--splide.js" # @4.1.4
pin "slick-carousel" # @1.8.1
pin "jquery" # @3.7.1
