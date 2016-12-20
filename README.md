# Pre-work - *GuestCheck*

**GuestCheck** is a tip calculator application for iOS.

Submitted by: **Jake Vo**

Time spent: **24** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [x] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] List anything else that you can get done to improve the app functionality!
* Better UI with the real guest check temple
* All fields get updated constantly with any changes that user makes
* Custom navigation bar

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<a href="http://imgur.com/t4kG9x4"><img src="http://i.imgur.com/t4kG9x4.gif" title="source: imgur.com" /></a>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.
Couple of challenges that I have encountered during working on the app. First I
had to update the total amount constantly everytime the split, the sub total and
the tip percentages got changed. The first 2, sub total and split are easy
because I can follow the tutorial video. However, for the tip percentages,
it was updated from a different viewController so I have spent a lot of time
to do research online and eventually I found out that I could implement delegate
to solve that problem. Second, couple of syntax bugs that took me a lot of times
to fix too because I was new to iOS and Swift. For example, I forgot to unwrap
variable everytime I set a value into it, keeping putting semi colon at the end
of every single line of code. Moving things around and forget to disconnect old
stuffs or connect new stuffs to viewControllers which was causing a lot of
runtime errors and took me a lot time to figure out to fix them.

## License

    Copyright [2016] [Jake Vo]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
