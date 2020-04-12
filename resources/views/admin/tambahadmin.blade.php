@include('layouts.includes.admin_header')
@include('layouts.includes.admin_leftmenu')
@section('content')
<div class="col-md-2">
</div>
<div class="col-md-9" style="padding:100px; padding-top:5%">
	<h2 style="color: #6699cc">Tambah Admin</h2>
	<form class="form-horizontal">
		<div class="form-group">
			<label class="control-label col-sm-2" style="text-align:left" for="username">Username</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="username">
			</div>
		</div>		
		<div class="form-group">
			<label class="control-label col-sm-2" style="text-align:left" for="pwd">Password</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="pwd">
			</div>
		</div>
		<button type="submit" class="btn btn-success">Tambah</button>
	</form>		
</div>