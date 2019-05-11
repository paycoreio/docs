# Postman Collections

While being able to build requests using a GUI is nice, Postman really starts to shine when you use collections. Postman Collections are simply a collection of pre-built requests that can be organized into folders, and they can be easily exported and shared with others.

## Exporting and importing Postman data

Postman can export and import the following formats as a file or generated URL. When you export a collection from the Postman app, the exported file is a JSON file. The file contains all data (and metadata) that is required by Postman to recreate the collection when imported back into Postman, or that is utilized by Newman to run the collection from the command line interface (CLI).

## Importing Swagger

A Swagger API definition usually lives as a single file, so we only support imports of single swagger files. If you have a lot of unrelated Swagger files in a folder, you can import those through the folder importer.

Saving a Swagger file as a collection:

1.  Clone the repository containing the Swagger definition to your local machine. If you have it saved locally as file already, that’s fine of course.
    
2.  Click on the Import button, and choose the Import File tab. If you have a lot of unrelated Swagger files in a folder, you can import those through the folder importer.
    [![import button](https://s3.amazonaws.com/postman-static-getpostman-com/postman-docs/WS-collections-view-raml-1a.png)](https://s3.amazonaws.com/postman-static-getpostman-com/postman-docs/WS-collections-view-raml-1a.png)

3.  Click on file and upload the Swagger file.

You’re done! Postman will detect all the Swagger definitions and convert them internally to Postman and then show you an import success message.

[![confirmation message](https://s3.amazonaws.com/postman-static-getpostman-com/postman-docs/WS-data-format-raml-2a.png)](https://s3.amazonaws.com/postman-static-getpostman-com/postman-docs/WS-data-format-raml-2a.png)

## API Swagger Specifications

-   Commerce Public API: https://swagger.paycore.io/commerce-public/swagger.yaml
-   Commerce Private API: https://swagger.paycore.io/commerce/swagger.yaml
-   Core API: https://swagger.paycore.io/swagger.yaml