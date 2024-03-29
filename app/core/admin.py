"""
Django admin customization.
"""
from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from core import models
from django.utils.translation import gettext_lazy as _


class UserAdmin(BaseUserAdmin):
    """ Define the admin pages for users"""
    ordering = ['id']
    list_display = ['email', 'name']
    fieldsets = (
        # None means the title in the admin field
        (None, {"fields": ("email", "password")}),
        (
           _('Permissions'),
           {
               'fields': (
                   'is_active',
                   'is_staff',
                   'is_superuser'
               )
           }
        ),
        (_('Important dates'), {'fields': ('last_login',)})
    )
    readonly_fields = ['last_login']
    add_fieldsets = (
        (None, {
            # classes is used to add css styles to the admin page
            'classes': ('wide',),
            'fields': (
                'email',
                'password1',
                'password2',
                'name',
                'is_active',
                'is_staff',
                'is_superuser'
            )
        }),
    )


admin.site.register(models.User, UserAdmin)
admin.site.register(models.Recipe)
admin.site.register(models.Tag)
admin.site.register(models.Ingredient)
