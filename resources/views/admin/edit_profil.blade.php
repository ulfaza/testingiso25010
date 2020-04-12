@include('layouts.includes.admin_header')
@include('layouts.includes.admin_leftmenu')
@section('content')
<div class="col-md-2">
</div>
<div class="col-md-9" style="padding:100px; padding-top:5%">
	<h2 style="color: #6699cc">Edit Profil</h2>
	<form class="form-horizontal">
		<div class="form-group">
			<label class="control-label col-sm-2" style="text-align:left" for="nama">Nama</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="nama">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" style="text-align:left" for="username">Username</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="username">
			</div>
		</div>		
		<div class="form-group">
			<label class="control-label col-sm-2" style="text-align:left" for="role">Role</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="role">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" style="text-align:left" for="instansi">Nama Instansi</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="instansi">
			</div>
		</div>		
		<div class="form-group">
			<label class="control-label col-sm-2" style="text-align:left" for="pwd">Password Lama</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="pwd">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" style="text-align:left" for="new_pwd">Password Baru</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="new_pwd">
			</div>
		</div>		
		<button type="submit" class="btn btn-danger">Simpan</button>
	</form>		
</div>