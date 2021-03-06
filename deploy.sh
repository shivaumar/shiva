deploy:
  # deploy develop to the staging environment
  - provider: script
    script: bash scripts/deploy.sh staging
    on:
      branch: develop
  # deploy master to production
  - provider: script
    script: bash scripts/deploy.sh production
    on:
      branch: master
