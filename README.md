# Terraform Refresher Project

Welcome to my Terraform Refresher Project! This repository serves as a comprehensive guide for developers and infrastructure enthusiasts looking to reacquaint themselves with Terraform's capabilities or for those who are looking to explore the various facets of Terraform for the first time. Check the ``.md`` file in each directory for instructions and notes for further help.

## Objective

The primary aim of this project is to offer hands-on examples showcasing the essential features of Terraform. The project covers the following Terraform topics:

- **Datasources:** Understand how to fetch data from a defined source.
  
- **Locals:** Delve into defining local values to simplify templates.

- **Modules:** Explore modularization in Terraform for better code organization.

  - **Custom Modules:** Learn to create your own reusable modules.
  
  - **Registry Modules:** Discover the use of community-contributed modules from the Terraform Registry.

- **Outputs:** Understand how to extract and use outputs from Terraform.

- **Providers:** Dive into connecting Terraform to third-party services and managing resources.

- **Templates:** Learn about Terraform's templating capabilities for generating configuration files.

- **Variables:** Get a grasp on defining and using variables in your Terraform configurations.

- **Terraform State:** Uncover the crucial aspect of managing and understanding Terraform's state mechanism.

## Getting Started

1. **Prerequisites**

   Ensure you have the following installed:
   - [Terraform](https://www.terraform.io/downloads.html)
   - [Provider CLI (if needed)](https://registry.terraform.io/browse/providers)

2. **Clone the Repository**

   ```bash
   git clone https://github.com/yourusername/terraform-refresher.git
   cd terraform-refresher
   ```

3. **Initialization**

   Before you start any operations with Terraform, initialize your environment:
   
   ```bash
   terraform init
   ```

4. **Apply Configuration**

   To create or update the resources:
   
   ```bash
   terraform apply
   ```

   Remember to destroy resources when they're no longer needed to avoid incurring costs:
   
   ```bash
   terraform destroy
   ```

## Structure

This project is organized by topic, with each directory corresponding to one of the listed Terraform topics. Within each directory, you'll find relevant configurations, examples, and READMEs that will guide you through the specifics of that topic.


## Feedback & Questions

If you have any feedback or questions, please raise an issue in this repository or reach out via [email](mailto:sschlangen@gmail.com).

---

Happy Terraforming! 🌍🚀
