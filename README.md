# The Hacking Project - The final project !

The past weeks have been a lot of hard work, and the last straight line's ahead. Here's an app to help you if you struggle to use templates.

This app has been created for [The Hacking Project](https://www.thehackingproject.org/) and is destined to be used only by the students & the creator.


# Organisation
Two templates are within this app, one is a one page, and the other one is a dashboard. Most of the assets can be found in the `vendor/assets` folder. As there's a lot of plugins that you might no know, we strongly advice you not to change any files in there.
The `root` will take you to the NewBiz template (see below)

## Dashboard - Stistla
- The index is located in the folder `app/views/dashboard/index.html`
- Most of the components are in the folder `app/views/dashboard/components`, such as the searchbar.
All your files are listed in the file explorer. You can switch from one to another by clicking a file in the list.
- You can also find the rendered elements in the layout folder, located in  `app/views/layouts`
- You can find the documentation on the [Stisla documentation folder](https://docs.getstisla.com/#/en/2.2.0/overview)
## One page template - NewBiz
- The index is located in the folder `app/views/home/index.html`
- You can find the original template on the [NewBiz homepage](http://demo.themequarry.com/theme/newbiz-new-bizbusiness-template-ASCGQEKQ)


# Particularities
As you can see, the *dashboard* template is organised in a specific way. We recommend you to use the same structure.
The one page template isn't  implemented following the same methodology : you have to do it. Training is the best way to learn ;)

## Two templates for one app ?

Yes, it is possible, quite simply actually. You just have to follow those steps :
1. In the controllers, specify which layout you want to use. Have a look in the `dashboard_controller` : we've used the `layout "dashboard"` line to do so.
2. In the layout folder, `app/views/layouts` create a layout html file (in our exemple, `dashboard.html.erb`)
3. In that folder, specify which stylesheet file / js file you want to use, like so : `<%= stylesheet_link_tag 'dashboard', media: 'all' %>`
4. Then, edit your path to take you were you want (in our example : `/dashboard` will takes us to the dashboard page, and the root to the one page template).

# Links
- [Stisla documentation folder](https://docs.getstisla.com/#/en/2.2.0/overview)
- [NewBiz homepage](http://demo.themequarry.com/theme/newbiz-new-bizbusiness-template-ASCGQEKQ)
.....