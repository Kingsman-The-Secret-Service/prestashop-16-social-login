
<!-- Block user information module NAV  -->
<div id="header_user_info" class="pull-right popup-over e-translate-top">
	<div class="popup-title">
		<i class="fa fa-user"></i>
	</div>
	<div class="popup-content">
		<ul class="links">
			{if $is_logged}
				<li>
					<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='sociallogin'}" class="account" rel="nofollow" style="white-space: nowrap;">
						<i class="fa fa-user"></i>
						<span>{l s='Hello' mod='sociallogin'}, {$cookie->customer_firstname} {$cookie->customer_lastname}</span></a>
				</li>
				<li>
					<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='My account' mod='sociallogin'}"><i class="fa fa-user"></i>{l s='My Account' mod='sociallogin'}</a>
				</li>
				<li class="first">
					<a id="wishlist-total" href="{$link->getModuleLink('blockwishlist', 'mywishlist', array(), true)|addslashes}" title="{l s='My wishlists' mod='sociallogin'}"><i class="fa fa-heart"></i>{l s='Wish List' mod='sociallogin'}</a>
				</li>
				<li>
					<a class="logout" href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log me out' mod='sociallogin'}">
					<i class="fa fa-lock"></i>{l s='Sign out' mod='sociallogin'}
					</a>
				</li>
			{else}
				{if (Configuration::get('GOOGLE_LOGIN_ENABLE'))}
					<li>
						<a href="{$link->getModuleLink('sociallogin','authenticate',["action"=>"google","mode" => "request"])|escape:'html':'UTF-8'}" >
							<i class="fa fa-google-plus-square" aria-hidden="true"></i>
							{l s='Login with Google'}
						</a>
					</li>
				{/if}

				{if (Configuration::get('FACEBOOK_LOGIN_ENABLE'))}
					<li>
						<a href="{$link->getModuleLink('sociallogin','authenticate',["action"=>"facebook","mode" => "request"])|escape:'html':'UTF-8'}" style="white-space: nowrap;">
							<i class="fa fa-facebook-official" aria-hidden="true"></i>
							{l s='Login with Facebook'}
						</a>
					</li>
				{/if}
					<li>
						<a class="login" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Login to your customer account' mod='sociallogin'}">
							<i class="fa fa-unlock-alt"></i>{l s='Sign in' mod='sociallogin'}
						</a>
					</li>
			{/if}
		</ul>
	</div>
</div>	