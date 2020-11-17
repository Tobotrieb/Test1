#define GLFW_INCLUDE_NONE
#include "glad/glad.h"
#include "glfw/glfw3.h"
#include <iostream>

#include "TestLib/Core/TestLib.h"

void error_callback(int error, const char* description) {
	std::cerr << "GLFW Error [" << error << "]: " << description << std::endl;
}

int main() {
	glfwSetErrorCallback(error_callback);
	if (!glfwInit()) {
		return -1;
	}
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	GLFWwindow* window = glfwCreateWindow(1600, 900, "Test1", nullptr, nullptr);
	if (!window) {
		glfwTerminate();
		return -1;
	}
	glfwMakeContextCurrent(window);
	glfwSwapInterval(1);

	gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);
	glViewport(0, 0, 1600, 900);

	while (!glfwWindowShouldClose(window)) {
		glClear(GL_COLOR_BUFFER_BIT);

		glfwSwapBuffers(window);
		glfwPollEvents();
	}
	glfwDestroyWindow(window);
	glfwTerminate();
}

