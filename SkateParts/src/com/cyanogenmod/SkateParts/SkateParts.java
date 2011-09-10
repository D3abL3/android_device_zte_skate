package com.cyanogenmod.SkateParts;

import com.cyanogenmod.SkateParts.R;

import android.os.Bundle;
import android.preference.PreferenceActivity;

public class SkateParts extends PreferenceActivity {

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		addPreferencesFromResource(R.xml.skateparts);
	}
}
