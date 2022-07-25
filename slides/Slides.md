---
marp: true
theme: default
footer: '@Chris_L_Ayers - https://chrislayers.com'
style: |
  .columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 1rem;
  }
  .fa-th-large {
    color: blue;
  }
  .fa-users {
    color: orange;
  }
  .fa-refresh {
    color: green;
  }
  .fa-flask {
    color: brown;
  }
  .fa-ban {
    color: red;
  }
  .fa-dollar {
    color: orange;
  }
  .fa-gears {
    color: brown;
  }
  .fa-code {
    color: blue;
  }
  .fa-flag {
    color: green;
  }
  .fa-line-chart {
    color: red;
  }
  .fa-bar-chart {
    color: orange;
  }
  @import 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css';
---

![bg](./img/background.jpg)
# Building in the Cloud with Bicep
## Chris Ayers

---

![bg left:40%](./img/portrait.jpg)

## Chris Ayers
### Senior Customer Engineer<br>Microsoft

- Twitter: @Chris\_L\_Ayers
- LinkedIn: - [chris\-l\-ayers](https://linkedin.com/in/chris-l-ayers/)
- Blog: [https://chrislayers\.com/](https://chrislayers.com/)
- GitHub: [Codebytes](https://github.com/codebytes)

---
![bg left](./img/background.jpg)

# Agenda
- What is IaC? 
- What is Bicep?
- How does Bicep Compare to ARM and Terraform?

---

# What is IaC?
Infrastructure as Code

![bg right](img/background.jpg)

---

# IaC

Infrastructure as Code (IaC) is the management of infrastructure (networks, virtual machines, load balancers, and connection topology) in a descriptive model, using version control to store the files.

---

# IaC Styles

<div class="columns">
<div>

## Imperative

- Do what I want
- Do X in the system
- List of commands
- Manage your own dependencies
- Polling to handling timing

</div>
<div>

## Declarative

- What I want
- Make the system look like X
- List of resources / configuration
- System knows the dependencies
- System knows how to handle timings

</div>

</div>

---

![bg fit](./img/imp-vs-decl.png)

---

# Bicep Features

- Simpler Syntax. No JSON noise
- Declarative Syntax
- Modularity
- Built for tool-ability
- Convert existing templates

___

# Bicep and ARM

![bg height:90% right](./img/bicep-arm.png)


---

# Questions

![bg](./img/background.jpg)
![bg](./img/owl.png)

---

# Resources

<div class="columns">
<div>

## Links

- [https://docs.microsoft.com/en-us/events/learntv/learnlive-iac-and-bicep/](https://docs.microsoft.com/en-us/events/learntv/learnlive-iac-and-bicep/)
- [https://github.com/codebytes](https://github.com/codebytes)

</div>
<div>

## Chris Ayers
- Twitter: @Chris\_L\_Ayers
- LinkedIn: - [chris\-l\-ayers](https://linkedin.com/in/chris-l-ayers/)
- Blog: [https://chrislayers\.com/](https://chrislayers.com/)
- GitHub: [Codebytes](https://github.com/codebytes)

</div>

</div>

