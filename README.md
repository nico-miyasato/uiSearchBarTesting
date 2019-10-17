# uiSearchBarTesting

UITest does not detect searchBar when setting navigationItem.title, both by code or using storyboard.

If you run `UITestingProjectUITests.testSearchBarExists()` and you have assigned a title in `ParentViewController.swift`

```
        self.navigationItem.title = "Breaking Title"
```

The test will fail.

However, if you just remove the "Breaking Title", the test will successfully finish.

Do you know why? 
Please let me know, because I don't.
