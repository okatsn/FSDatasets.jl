# Changelog
!!! note Workflow for add new dataset
    - Create a branch and switch to it
    - Add raw data, scripts and tests for data processing
    - Create zipped data and update `data/doc/datasets.csv`
    - Add tests for loading/using zipped data
    - Checkout to `main`, merge this branch to `main` **without** raw data and preprocessing scripts; see the section below for details.


!!! note Reminder before release
    - Any version with raw data should be appended by `-DEV`
    - **Keep `main` branch clean** without raw data and raw data dependent scripts:
        - scripts for generating zipped data
        - tests for the scripts and resulted data
    - **Checklist**
        - [ ] Make sure all tests are passed
        - [ ] Make sure the followings are `.gitignore`d in the `main` branch
            - `data/raw/`



## v0.1.0
- Dataset `LHVRSHIVA`
