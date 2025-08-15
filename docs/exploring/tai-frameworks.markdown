---
layout: default
title: The Trusted AI (TAI) Frameworks Project
nav_order: 50
parent: Exploring AI Trust and Safety
---

# The Trusted AI (TAI) Frameworks Project


A blog post by University of Notre Dame’s [Charles Vardeman](https://crc.nd.edu/about/people/charles-vardeman/){:target="charles-vardeman"}, called [Reflections on Trusted AI Frameworks after two years](https://la3d.github.io/nuggets/posts/frameworks-reflection/){:target="la3d-fr"}, defined six dimensions for trust used in The Trusted AI (TAI) Frameworks Project (paper: [Liu, et al.](https://dl.acm.org/doi/10.1145/3546872){:target="liu"} and [ND Crane GitHub repo](https://github.com/nd-crane){:target="nd-crane-repo"}).  This project is a collaboration of several Indiana universities and the Naval Surface Warfare Center Crane Division (NSWC Crane). The six dimensions are the following:

* **Explainability:** Making AI logic and decisions understandable to humans
* **Safety and Robustness:** Ensuring reliable operation under varying conditions
* **Non-discrimination and Fairness:** Preventing unfair bias or preferential treatment
* **Privacy:** Safeguarding individual rights and information
* **Sustainability:** Considering environmental impact
* **Accountability:** Maintaining responsibility for decisions and actions

These dimensions impact the entire AI life cycle, from initial data collection and processing through training, tuning, inference, and AI-based applications. 

Vardeman’s post also discusses the fundamental changes introduced by AI in software development that [Andrej Karpathy called "Software 2.0" in 2017](https://la3d.github.io/nuggets/posts/frameworks-reflection/#ref-karpathy2017software){:target="karpathy-reflect"}. Software 1.0 is deterministic, with programmed behaviors that specify exactly how the system should behave, given particular inputs. In Software 2.0, behaviors and patterns are probabilistic and learned from data, permitting applications to support vastly more complex scenarios, but without the “simplicity” that determinism brings. Nevertheless, many existing software engineering practices adapt well to this new paradigm, while some new approaches and innovations are also required. 

TAI uses [GitOps](https://en.wikipedia.org/wiki/DevOps#GitOps){:target="gitops"}, the Git-focused version of [DevOps](https://en.wikipedia.org/wiki/DevOps){:target="devops"}, as an anchor, extended with DataOps, which for them includes [Data Version Control (DVC)](https://dvc.org/){:target="dvc"} and [Hugging Face Data Cards](https://huggingface.co/docs/hub/en/datasets-cards){:target="hf-dc"}, and [ModelOps](https://en.wikipedia.org/wiki/ModelOps){:target="modelops"}, including [Hugging Face Model Cards](https://huggingface.co/docs/hub/en/model-cards){:target="hf-mc"} for model management. Their approach is similar to the approach that Hugging Face uses, except TAI is more agnostic to the underlying Git Management system (GitHub, GitLab, etc). TAI uses Software Bill of Materials ([SBoMs](https://www.cisa.gov/sbom){:target="sbom"}, such as the [Linux Foundation SPDX](https://spdx.dev/){:target="spdx"} 3.0) within Git for dependency tracking. They are also experimenting with [MLCommons Croissant](https://mlcommons.org/working-groups/data/croissant/){:target="mlc-croissant"} as part of tracking for data, model, and training provenance, which are tracked within the GitOps environment. Both SPDX and Croissant can be used to construct knowledge graphs.

Figure 3 provides a holistic view of their approach.
Figure 3: Conceptual Framework Principles for TrustedAI in the AI System Lifecycle (Source: [la3d.github.io/nuggets/posts/frameworks-reflection/](https://la3d.github.io/nuggets/posts/frameworks-reflection/){:target="la3d-fr"}.

![Conceptual Framework Principles for TrustedAI in the AI System Lifecycle]({{site.baseurl}}/assets/images/4x4-circle-template_TAI_4-2023.png){:class="centered"}

<p class="caption">Figure 3: Conceptual Framework Principles for TrustedAI in the AI System Lifecycle (Source: <a href="https://la3d.github.io/nuggets/posts/frameworks-reflection/" target="la3d-fr">Reflections on Trusted AI Frameworks after two years</a>)
</p>

---

The next section explores [Cybersecurity]({{site.baseurl}}/exploring/cybersecurity).
