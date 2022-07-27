To generate developer version `cd` to the root of this repo, then run:

```
bikeshed spec index.bs dev/index.html  --md-Text-Macro="DEV on"
```

To exclude and include parts of the document use [Bikeshed conditional inclusion](https://tabatkins.github.io/bikeshed/#conditional):

```bikeshed
<div include-if="text macro: DEV">HELLO HELLO TEST</div>

<div exclude-if="text macro: DEV">HELLO HELLO TEST</div>
```