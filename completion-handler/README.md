# 🪢 Completion Handlers
### This folder contains exercises I completed to improve my understanding of completion handlers in iOS development.

Completion handlers are closures that are called when an asynchronous task finishes executing. They provide a way to execute code after asynchronous operations like network requests, allowing developers to update the UI, process data, and handle errors once the task completes.

<br><br>

## Contents
* [Completion-Handlers playground](completion-handlers-exercise.playground.zip) — a playground dedicated to an explanation and examples of using completion handlers;
* [App exercise](https://github.com/cyberbitrixx/Targeting-weak-spots/tree/0ea17d7fa1c386056e2414e06d69503253d2d7ae/completion-handler/CompletionHandler-exercise-app) — a simple demo app showing usage of completion handlers for API data loading.

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

This app simulates fetching data from an API using a completion handler closure to update the UI after the async request completes. The code is refactored from a synchronous data fetch to use async dispatch queues and completion handlers. The table view is then populated with the data once it is returned.

