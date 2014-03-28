# Extensible Web Design Principles

This document seeks to define some of the principles of web extensibility as as guiding principle for new feature development and standardization in the web platform, with a primary scope of the browser-based web. The intention is to document the web extensibility design principles, their justification and how they can be used to define new web features and guide standardization.

## Guidelines

The guidelines of web extensibility are:

New features should be designed from the ground up, with a focus on new low-level capabilities, sometimes called “primitives.” These low-level capabilities can be composed into coarser-grained features.

Web features, including existing well-used features, should be explainable as a composition of lower-level capabilities.

New Web features should be able to be implemented for non-supporting browsers using script. This approach has been called “pollyfilling” by the Web community. A polyfill is loosely defined as a script library which enables a new feature to the browser developer which otherwise may be on a standards track and may have already been implemented in other browsers. The ability to polyfill a new web feature allows for wider adoption as different browsers have different implementation schedules and strategies with regard to feature implementation. Polyfills therefore provide developer with a more predictable feature set. 

As new capabilities are adopted by web developers, including developers of frameworks and libraries, they can be tested and refined using feedback from these communities. A “virtuous cycle” of developer community feedback should be built in to the design process for new features.

## Examples


