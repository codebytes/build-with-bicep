---
marp: true
theme: default
footer: '@Chris_L_Ayers - https://chris-ayers.com'
style: |
  table {
      display: table;
      width: 100%;
  }
  .columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 1rem;
  }

  @import 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css'

---

![bg left:40%](./img/background.jpg)

![auto](./img/bicep-logo.png)
# Building in the Cloud with Bicep

# Chris Ayers ![w:120](img/head-shoulders-transparent.png)

---

![bg left:40%](./img/portrait.jpg)

## Chris Ayers
### Senior Customer Engineer<br>Microsoft

<i class="fa-brands fa-twitter"></i> Twitter: @Chris\_L\_Ayers
<i class="fa-brands fa-mastodon"></i> Mastodon: @Chrisayers@hachyderm.io
<i class="fa-brands fa-linkedin"></i> LinkedIn: - [chris\-l\-ayers](https://linkedin.com/in/chris-l-ayers/)
<i class="fa fa-window-maximize"></i> Blog: [https://chris-ayers\.com/](https://chris-ayers.com/)
<i class="fa-brands fa-github"></i> GitHub: [Codebytes](https://github.com/codebytes)

---

![bg right:40% auto](./img/bicep-logo.png)

# Agenda
- What is IaC?
- What is Bicep?
- What is Azure Resource Manager? 
- Demos
---

![bg right](img/background.jpg)

# What is IaC?
Infrastructure as Code (IaC) is the managing and provisioning of infrastructure through code instead of through manual processes.

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

# Popular IaC Technologies


<div class="columns">
<div>

## Native

- ARM / Bicep
- AWS Cloud Formation
- Google Cloud Deployment Manager

</div>
<div>

## Non Native

- Terraform
- Pulumi
- Vagrant
- Chef
- Puppet
- Ansible
- SaltStack 
  
</div>
</div>


---

# ARM / Bicep / Terraform

Feature | ARM | Bicep | Terraform
---|---|---|---
Format | Json | DSL | DSL - HCL (HashiCorp Language) 
Target | Azure | Azure | Multi-Cloud or On-Prem through providers
Support | Native<p>Day-0 | Native<p>Day-0 | Support can lag with AzureRM<p> Day-0 with AzApi 
State | Azure | Azure | State File via files, Blob, or Terraform Cloud

---

# Bicep Features

### <i class="fa fa-code"></i> Simpler Syntax. No JSON noise
### <i class="fa fa-object-group"></i> Declarative Syntax
### <i class="fa fa-th-large"></i> Modularity
### <i class="fa fa-cogs"></i> Built for tool-ability
### <i class="fa fa-exchange"></i> Convert existing templates

___

# Bicep and ARM

![bg height:90% right](./img/bicep-arm.png)

---

# ARM Templates
## Json & Bicep

![right bg fit](./img/2-convert.png)

---

# Azure Resource Manager (ARM)

![right:60% bg height:65%](./img/2-hierarchy.png)

---

# Azure Resource IDs

![right:60% fit bg](./img/child-resource-id.png)

---

# Parameter Design

![left  vertical bg fit](./img/3-free-form-configuration.png)
![right bg fit](./img/3-configuration-map.png)

---

# File Layout

![left:40%  bg fit](./img/4-group-element-type.png)
![right:70% bg fit](./img/4-group-resource.png)

---

# Demos

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

<i class="fa-brands fa-twitter"></i> Twitter: @Chris\_L\_Ayers
<i class="fa-brands fa-mastodon"></i> Mastodon: @Chrisayers@hachyderm.io
<i class="fa-brands fa-linkedin"></i> LinkedIn: - [chris\-l\-ayers](https://linkedin.com/in/chris-l-ayers/)
<i class="fa fa-window-maximize"></i> Blog: [https://chris-ayers\.com/](https://chris-ayers.com/)
<i class="fa-brands fa-github"></i> GitHub: [Codebytes](https://github.com/codebytes)

</div>

</div>
