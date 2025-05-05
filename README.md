<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
</head>
<body style="font-family: Arial, sans-serif; background-color: #ffffff; color: #000; padding: 20px;">

  <h1>FileStorageUpload</h1>
  <p><strong>Purpose:</strong> Upload files from Oracle APEX to a local disk using PL/SQL.</p>

  <h2>Setup Steps</h2>
  <ol>
    <li>Create Oracle Directory:<br>
      <code>CREATE DIRECTORY file_dir AS 'C:\files';</code>
    </li>
    <li>Grant privileges to your APEX schema:<br>
      <code>GRANT ALL ON DIRECTORY file_dir TO my_schema;</code>
    </li>
    <li>Grant access to UTL_FILE:<br>
      <code>GRANT EXECUTE ON UTL_FILE TO my_schema;</code>
    </li>
    <li>Run the installation script:<br>
      <code>@install.sql</code>
    </li>
  </ol>

  <h2>Sample PL/SQL Usage</h2>
  <pre>
BEGIN
  file_upload_api.upload_file(
    p_filename  => 'sample.pdf',     -- Filename
    p_mimetype  => 'application/pdf',-- File MIME type
    p_blob      => :P1_FILE,         -- File BLOB from APEX
    p_dir_name  => 'FILE_DIR'        -- Oracle directory
  );
END;
  </pre>

</body>
</html>
