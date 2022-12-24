from django import forms 

class komen_form(forms.Form):
    email = forms.EmailField(
        max_length=50,
        widget=forms.TextInput(
            attrs={
                'class':'form-control',
                'placeholdar':'Masukan email'
            }
        )
    )
    isi = forms.CharField(
        max_length=500,
        widget=forms.TextInput(
            attrs={
                'Class':'form-control',
                'placeholder':'ini isi komentar'
            }
        )
    )