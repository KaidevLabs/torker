<div align="center">

<a href="https://kaidev.io/">
  <img src="https://kaidev.io/images/isotype_gradient.svg" width="42" alt="Kaidev">
</a>

<h1 align="center">Evolve your software with purpose</h1>

<p>
  <a href="https://kaidev.io/#philosophy"><img src="https://img.shields.io/badge/Philosophy-Kaizen-ea580c?style=flat-square" alt="Philosophy: Kaizen"></a>
  <a href="https://kaidev.io/#about"><img src="https://img.shields.io/badge/Value-Technical%20excellence-16a34a?style=flat-square" alt="Value: Technical excellence"></a>
  <a href="https://kaidev.io/#contact"><img src="https://img.shields.io/badge/Focus-Let%27s%20talk-2563eb?style=flat-square" alt="Focus: Let's talk"></a>
</p>

<h3 align="center">
  Kaidev is a software consultancy specializing in development and code refactoring.
  Guided by Kaizen, we strengthen architecture, performance, and automation to turn
  technical challenges into a competitive advantage.
</h3>

<p>
  <a href="https://kaidev.io/">Website</a> ·
  <a href="https://www.linkedin.com/company/kaidev/">LinkedIn</a> ·
  <a href="https://bsky.app/profile/jpascual.kaidev.io">Bluesky</a>
</p>

</div>
## Building and publishing

The Tor version this image ships is determined by the pinned Alpine release in
the `Dockerfile`. Bump the base image deliberately rather than floating it, then
publish the image tagged with the Tor version it contains — that is the tag
consumers pin.

```bash
docker build -t everlyrusher/torker:0.4.9.15 .
docker tag everlyrusher/torker:0.4.9.15 everlyrusher/torker:latest
docker push everlyrusher/torker:0.4.9.15
docker push everlyrusher/torker:latest
```

Verify what you actually built before pushing it anywhere:

```bash
docker run --rm --entrypoint tor everlyrusher/torker:0.4.9.15 --version
```

Clients reference the version tag, never `latest`.
