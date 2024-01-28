# config/importmap.rb

pin "application", preload: true
pin "@hotwired/stimulus", to: "https://cdn.skypack.dev/@hotwired/stimulus"
pin_all_from "app/javascript/controllers", under: "controllers"
