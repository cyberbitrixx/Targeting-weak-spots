# 🪢 Completion Handlers
By: Sofia Shchukina February 2024
<br><br>

### This folder contains exercises I completed to improve my understanding of completion handlers in iOS development.

Completion handlers are closures that are called when an asynchronous task finishes executing. They provide a way to execute code after asynchronous operations like network requests, allowing developers to update the UI, process data, and handle errors once the task completes.

<br><br>

## Contents
* [Completion-Handlers playground](completion-handlers-exercise.playground.zip) — a playground dedicated to an explanation and examples of using completion handlers;
* [App exercise](https://github.com/cyberbitrixx/Targeting-weak-spots/tree/0ea17d7fa1c386056e2414e06d69503253d2d7ae/completion-handler/CompletionHandler-exercise-app) — a simple demo app showing usage of completion handlers for API data loading.

<br><br>

## Description
To solidify my understanding of completion handlers, this exercise was completed by following the guidance of the excellent [tutorial](https://www.youtube.com/watch?v=JmPbnuJxzHg&list=PLdp5QsNA84mZpZ1E0CBewTTMHbIDKwWpE&index=2&t=104s). Working through a real-world example helped reinforce the concepts of asynchronous programming with completion closures.

### Technologies used:
* Swift;
* UIKit;
* Storyboard.
<br><br>

# Closer Look
## Playground exercise
This playground demonstrates using completion handlers by starting with a simple function that prints statements asynchronously. It is then refactored to accept a trailing completion closure, allowing additional logic to execute after the main function body. Escaping closures and passing parameters into the completion block are also shown.

### Key points
1. The issue completion handlers solve (initial synchronous function without a completion block):
   <br><br>
![](https://github.com/cyberbitrixx/Targeting-weak-spots/blob/main/assets/completion-handler-playground.gif)
 <br><br>
 
2. Completion block added and explained (final stage):
    <br><br>
![](https://github.com/cyberbitrixx/Targeting-weak-spots/blob/bea8969fe2f3c817d1af841e1343397bcee95072/assets/completion-handlers-playground-2.gif)

 <br><br>
  <br><br>

## Utilising completion-handlers in a demo-app while simulating an API data request

This app simulates fetching data from an API using a completion handler closure to update the UI after the async request completes. The code is refactored from a synchronous data fetch to use async dispatch queues and completion handlers (inspect the X Code app to see the old and refactored code to compare). The table view is then populated with the data once it is returned.
<br><br>

| Behavior  |                  Input                   |                                   Output |
| --------- | :--------------------------------------: | ---------------------------------------: |
| browse the demo-app |      download the zip of this repo and open the X Code project from "completion-handler" folder    |  the demo app exercise opens :)  |
| run the app on simulator |      press the "Run" button in X Code    |  see the app on simulator  |
| fetch names data for Completion Handlers table view |      press "Get Data" button on Completion Handlers screen    |  table view is being updated after waiting 2 seconds and populated with APIData items  thanks to asynchronous data fetch simulation  |
| fetch names for Modal screen |     1) press "Show Modal" button, 2) press "Get Data" button on Modal screen   |  watch Modal table view also being populated with items, thanks to making a data fetch function with CH we used in a previous example reusable and now using in Modal example too |

 <br><br>

## Preview

Fetch data for Completion Handler screen             |  Fetch data for Modal screen
:-------------------------:|:-------------------------:
![](https://github.com/cyberbitrixx/Targeting-weak-spots/blob/1ad7fa5998fa7912ddb0bd1689e3cec6e941dce7/assets/SimulatorScreenRecording-iPhone14Pro-2024.gif)  |  ![](https://github.com/cyberbitrixx/Targeting-weak-spots/blob/1ad7fa5998fa7912ddb0bd1689e3cec6e941dce7/assets/SimulatorScreenRecording-iPhone14Pro-2024-1.gif)
