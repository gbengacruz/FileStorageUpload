create or replace package file_upload_api as 
	--upload file to storage
	procedure upload_file(p_filename varchar2,
							 p_mimetype varchar2,
							 p_blob     blob,
							 p_dir_name varchar2
							 );

end file_upload_api;
