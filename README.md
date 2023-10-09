# FileStorageUpload
File Upload to Local Disk
<p> Step 1. Create Oracle Directory - create directory file_dir as "c:\files"  </p>
<p> Step 2. Grant All on the directory to your app schema  - grant all on directory file_dir to "my_schema" </p>
<p> Step 3. Run the scrpit below on the database </p>
        <p> @install.sql </p>

<p> Sample  </p>
<p>
begin
<p> file_upload_api.upload_file(p_filename => ,    -- filename </p>
				<p> p_mimetype => ,   -- mimetype </p>
				<p> p_blob => ,       -- file blob </p>
				<p> p_dir_name =>     -- directory name </p>
				<p> ); </p>
<p> end;					
</p>
