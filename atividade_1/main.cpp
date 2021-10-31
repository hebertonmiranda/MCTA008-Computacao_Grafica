#include <fmt/core.h>

#include "abcg.hpp"
#include "openglwindow.hpp"

int main(int argc, char **argv) {
  try {
    // Create application instance
    abcg::Application app(argc, argv);

    // Create OpenGL window
    auto window{std::make_unique<OpenGLWindow>()};
    window->setWindowSettings({.width = 790,   // 452
                               .height = 426,  // 515
                               //.showMaximizeButton = false,
                               .showFPS = false,
                               .showFullscreenButton = false,
                               .title = "Simon Game!"});

    // Run application
    app.run(std::move(window));
  } catch (const abcg::Exception &exception) {
    fmt::print(stderr, "{}\n", exception.what());
    return -1;
  }
  return 0;
}
