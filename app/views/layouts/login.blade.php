@extends('layouts.base')

{{-- Web site Title --}}
@extends('layouts.login.navbar')

{{-- Content --}}
@section('content')
                    <form method="POST" action="{{{ URL::to('/users/login') }}}" accept-charset="UTF-8">
                	    <div class="module-head">
                		    <h3>Sign In - PMK LP3I Makassar</h3>
                		</div>

                		<div class="module-body">
                            @if (Session::get('error'))
                                {{--<div class="alert alert-error">{{{ Session::get('error') }}}</div>--}}
                                <div class="alert alert-error">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <strong>Error!!!</strong> {{{ Session::get('error') }}}
                                </div>
                            @endif

                            @if (Session::get('notice'))
                                {{--<div class="alert">{{{ Session::get('notice') }}}</div>--}}
                                <div class="alert">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                	<strong>Perhatian!!!</strong> {{{ Session::get('notice') }}}
                                </div>
                            @endif
                		    <div class="control-group">
                                <div class="controls row-fluid">
                                    <input type="hidden" name="_token" value="{{{ Session::getToken() }}}">
                                </div>
                            </div>
                		    <div class="control-group">
                			    <div class="controls row-fluid">
                			        <label for="email">{{{ Lang::get('confide::confide.username_e_mail') }}}</label>
                			        <input class="span12" tabindex="1" placeholder="{{{ Lang::get('confide::confide.username_e_mail') }}}" type="text" name="email" id="email" value="{{{ Input::old('email') }}}">
                				    {{--<input class="span12" type="text" id="inputEmail" placeholder="Username">--}}
                				</div>
                			</div>

                			<div class="control-group">
                			    <div class="controls row-fluid">
                			        <label for="password">
                                        {{{ Lang::get('confide::confide.password') }}}
                                    </label>
                                    <input class="span12" tabindex="2" placeholder="{{{ Lang::get('confide::confide.password') }}}" type="password" name="password" id="password">
                				    {{--<input class="span12" type="password" id="inputPassword" placeholder="Password">--}}
                				</div>
                			</div>
                		</div>

                		<div class="module-foot">
                		    <div class="control-group">
                			    <div class="controls clearfix">
                				    {{--<button type="submit" class="btn btn-primary pull-right">Login</button>--}}
                				    <button tabindex="3" type="submit" class="btn btn-primary pull-right">{{{ Lang::get('confide::confide.login.submit') }}}</button>
                				    <label for="remember" class="checkbox">{{{ Lang::get('confide::confide.login.remember') }}}
                                        <input type="hidden" name="remember" value="0">
                                        <input tabindex="4" type="checkbox" name="remember" id="remember" value="1">
                                    </label>
                				</div>
                			</div>
                		</div>
                	</form>
@stop
