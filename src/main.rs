use dioxus::prelude::*;

const FAVICON: Asset = asset!("/assets/favicon.ico");
const MAIN_CSS: Asset = asset!("/assets/main.css");

fn main() {
    dioxus::launch(App);
}

#[component]
fn App() -> Element {
    rsx! {
        document::Link { rel: "icon", href: FAVICON }
        document::Link { rel: "stylesheet", href: MAIN_CSS }
        document::Title { "cedian.dev" }
        Hero {}
    }
}

#[component]
pub fn Hero() -> Element {
    rsx! {
        div {
            class: "container",

            div {
                class: "links",

                h1 { a { href: "https://github.com/Cedian03/cedian-dev/", "cedian.dev" } }
                div {
                    a { href: "https://github.com/Cedian03/", "github" }
                    a { href: "https://www.linkedin.com/in/algot-johansson-9434a22b9/", "linkedin" }
                }
            }
        }
    }
}