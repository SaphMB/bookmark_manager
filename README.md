User Stories
------------

```
As a user
So that I can find pages I saved
I want to access my existing bookmarks

As a user
So that I don’t have to remember URLs
I want to be able to add new links to my bookmark manager

As a user
So that I can organise my bookmarks
I want to be able to add tag(s) to each bookmark

As a user
So that I easily find related bookmarks
I want to be able to filter bookmarks by their tag
```

Domain Model
------------

Classes | Methods
----|----
BookmarkManager | .add
  | .retrieve
  | .filter
  | .delete
Bookmark | .tag
  | .url
