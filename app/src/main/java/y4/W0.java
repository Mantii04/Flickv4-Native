package y4;

import android.app.FragmentManager;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.Toast;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.TraktSignInActivity;
import flix.com.vision.activities.player.YouTubeWebviewActivity;
import flix.com.vision.api.alldebrid.AllDebridApiKeyEntryActivity;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.offcloud.OffCloudApiKeyEntryActivity;
import flix.com.vision.api.premiumize.PremApiKeyEntryActivity;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.api.torbox.TorBoxApiKeyEntryActivity;
import flix.com.vision.models.SubEvent;
import flix.com.vision.tv.Constant;
import java.io.File;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final /* synthetic */ class W0 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21186b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SettingsActivity f21187e;

    public /* synthetic */ W0(SettingsActivity settingsActivity, int i2) {
        this.f21186b = i2;
        this.f21187e = settingsActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = 2;
        int i7 = 8;
        final int i8 = 1;
        final int i9 = 0;
        final SettingsActivity settingsActivity = this.f21187e;
        switch (this.f21186b) {
            case 0:
                settingsActivity.f15083A1.performClick();
                break;
            case 1:
                int i10 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                SharedPreferences sharedPreferences = App.getInstance().f14440s;
                String str = Constant.f16184b;
                if (sharedPreferences.getInt("mouse_toggle_mode", 0) == 0) {
                    if (!App.f14424I) {
                        new n4.c(settingsActivity.getBaseContext()).setColors(R.array.sub_colors).setSelectedColorRes(App.getInstance().f14440s.getInt("mouse_toggle_color", R.color.md_deep_orange_500)).setDismissOnColorSelected(true).setTitle(R.string.select_font_color_label).setOutlineWidth(2).setOnColorSelectedListener(new n4.d() { // from class: y4.a1
                            @Override // n4.d
                            public final void onColorSelected(boolean z6, int i11) {
                                int i12;
                                int i13;
                                int i14 = 0;
                                SettingsActivity settingsActivity2 = settingsActivity;
                                switch (i8) {
                                    case 0:
                                        int i15 = SettingsActivity.f15080c2;
                                        settingsActivity2.getClass();
                                        if (z6) {
                                            String str2 = "#" + Integer.toHexString(i11).toUpperCase();
                                            int[] iArr = settingsActivity2.f15137S1;
                                            int length = iArr.length;
                                            while (true) {
                                                if (i14 < length) {
                                                    i12 = iArr[i14];
                                                    if (settingsActivity2.getResources().getString(i12).equalsIgnoreCase(str2)) {
                                                        App.getInstance().f14440s.edit().putInt("subtitle_color", i12).apply();
                                                        App.getInstance().f14440s.edit().putInt("subtitle_color_res81", i12).apply();
                                                        SubEvent subEvent = new SubEvent();
                                                        subEvent.color = i12;
                                                        EventBus.getDefault().post(subEvent);
                                                    } else {
                                                        i14++;
                                                    }
                                                } else {
                                                    i12 = R.color.md_white_1;
                                                }
                                            }
                                            try {
                                                settingsActivity2.f15182j.setBackgroundResource(i12);
                                                break;
                                            } catch (Exception e3) {
                                                e3.printStackTrace();
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i16 = SettingsActivity.f15080c2;
                                        settingsActivity2.getClass();
                                        if (z6) {
                                            String str3 = "#" + Integer.toHexString(i11).toUpperCase();
                                            int[] iArr2 = settingsActivity2.f15137S1;
                                            int length2 = iArr2.length;
                                            while (true) {
                                                if (i14 < length2) {
                                                    i13 = iArr2[i14];
                                                    if (settingsActivity2.getResources().getString(i13).equalsIgnoreCase(str3)) {
                                                        App.getInstance().f14440s.edit().putInt("mouse_toggle_color", i13).apply();
                                                    } else {
                                                        i14++;
                                                    }
                                                } else {
                                                    i13 = R.color.md_white_1;
                                                }
                                            }
                                            try {
                                                settingsActivity2.f15152X1.setBackgroundResource(i13);
                                                break;
                                            } catch (Exception e7) {
                                                e7.printStackTrace();
                                            }
                                        }
                                        break;
                                }
                            }
                        }).build().show(settingsActivity.getSupportFragmentManager(), "");
                        break;
                    } else {
                        settingsActivity.e("mouse_toggle_color", false);
                        break;
                    }
                } else {
                    Toast.makeText(settingsActivity.getBaseContext(), "Only Applicable for Circle Toggle", 0).show();
                    break;
                }
            case 2:
                int i11 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                if (!App.f14424I) {
                    new n4.c(settingsActivity.getBaseContext()).setColors(R.array.sub_colors).setSelectedColorRes(App.getInstance().f14440s.getInt("subtitle_color", R.color.md_white_1)).setDismissOnColorSelected(true).setTitle(R.string.select_font_color_label).setOutlineWidth(2).setOnColorSelectedListener(new n4.d() { // from class: y4.a1
                        @Override // n4.d
                        public final void onColorSelected(boolean z6, int i112) {
                            int i12;
                            int i13;
                            int i14 = 0;
                            SettingsActivity settingsActivity2 = settingsActivity;
                            switch (i9) {
                                case 0:
                                    int i15 = SettingsActivity.f15080c2;
                                    settingsActivity2.getClass();
                                    if (z6) {
                                        String str2 = "#" + Integer.toHexString(i112).toUpperCase();
                                        int[] iArr = settingsActivity2.f15137S1;
                                        int length = iArr.length;
                                        while (true) {
                                            if (i14 < length) {
                                                i12 = iArr[i14];
                                                if (settingsActivity2.getResources().getString(i12).equalsIgnoreCase(str2)) {
                                                    App.getInstance().f14440s.edit().putInt("subtitle_color", i12).apply();
                                                    App.getInstance().f14440s.edit().putInt("subtitle_color_res81", i12).apply();
                                                    SubEvent subEvent = new SubEvent();
                                                    subEvent.color = i12;
                                                    EventBus.getDefault().post(subEvent);
                                                } else {
                                                    i14++;
                                                }
                                            } else {
                                                i12 = R.color.md_white_1;
                                            }
                                        }
                                        try {
                                            settingsActivity2.f15182j.setBackgroundResource(i12);
                                            break;
                                        } catch (Exception e3) {
                                            e3.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                default:
                                    int i16 = SettingsActivity.f15080c2;
                                    settingsActivity2.getClass();
                                    if (z6) {
                                        String str3 = "#" + Integer.toHexString(i112).toUpperCase();
                                        int[] iArr2 = settingsActivity2.f15137S1;
                                        int length2 = iArr2.length;
                                        while (true) {
                                            if (i14 < length2) {
                                                i13 = iArr2[i14];
                                                if (settingsActivity2.getResources().getString(i13).equalsIgnoreCase(str3)) {
                                                    App.getInstance().f14440s.edit().putInt("mouse_toggle_color", i13).apply();
                                                } else {
                                                    i14++;
                                                }
                                            } else {
                                                i13 = R.color.md_white_1;
                                            }
                                        }
                                        try {
                                            settingsActivity2.f15152X1.setBackgroundResource(i13);
                                            break;
                                        } catch (Exception e7) {
                                            e7.printStackTrace();
                                        }
                                    }
                                    break;
                            }
                        }
                    }).build().show(settingsActivity.getSupportFragmentManager(), "");
                    break;
                } else {
                    settingsActivity.e("subtitle_color", true);
                    break;
                }
            case 3:
                settingsActivity.f15212u = true;
                A.i.x(App.getInstance().f14440s, "clear_history_pending", true);
                try {
                    N4.a.Success(settingsActivity, "Search history cleared", null, 48, 0);
                    break;
                } catch (Exception unused) {
                    return;
                }
            case 4:
                int i12 = SettingsActivity.f15080c2;
                if (!PremiumizeCommon.f15822b) {
                    settingsActivity.getClass();
                    settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) PremApiKeyEntryActivity.class));
                    break;
                } else {
                    FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                    Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                    newInstance.setTitle("Premiumize Logout");
                    newInstance.setMessage("Do you really want to unlink your Account ?");
                    newInstance.setButton1("CANCEL", new A4.q(i7));
                    newInstance.setButton2("YES, LOGOUT", new W0(settingsActivity, 15));
                    try {
                        newInstance.show(fragmentManager, "");
                        break;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
            case 5:
                int i13 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                try {
                    SettingsActivity.deleteDir(settingsActivity.getCacheDir());
                    SettingsActivity.deleteDir(settingsActivity.getCodeCacheDir());
                    File externalCacheDir = settingsActivity.getExternalCacheDir();
                    if (externalCacheDir != null) {
                        SettingsActivity.deleteDir(externalCacheDir);
                    }
                    Toast.makeText(settingsActivity.getBaseContext(), R.string.cache_cleared, 1).show();
                    settingsActivity.f15120N.setText("Clear Cache - " + settingsActivity.getCacheSize());
                    break;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    Toast.makeText(settingsActivity.getBaseContext(), "An Error Occurred", 1).show();
                    return;
                }
            case 6:
                int i14 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                ProgressDialog progressDialog = new ProgressDialog(settingsActivity);
                settingsActivity.f15209t = progressDialog;
                progressDialog.setMessage("Checking updates...");
                settingsActivity.f15209t.setProgressStyle(0);
                settingsActivity.f15209t.setCancelable(false);
                settingsActivity.f15209t.show();
                App.getInstance().loadRemoteConfig();
                new Handler().postDelayed(new Z0(settingsActivity, i9), 5000L);
                break;
            case 7:
                settingsActivity.f15229z1.performClick();
                break;
            case 8:
                settingsActivity.f15226y1.performClick();
                break;
            case 9:
                settingsActivity.f15098F1.performClick();
                break;
            case 10:
                settingsActivity.f15100G0.setEnabled(false);
                ProgressDialog progressDialog2 = new ProgressDialog(settingsActivity);
                progressDialog2.setMessage("Creating Backup...");
                progressDialog2.setCancelable(false);
                progressDialog2.show();
                new Thread(new RunnableC1894b1(settingsActivity, progressDialog2, i2)).start();
                new Handler().postDelayed(new Z0(settingsActivity, i8), 4000L);
                break;
            case 11:
                int i15 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                if (!AllDebridCommon.f15806f) {
                    settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) AllDebridApiKeyEntryActivity.class));
                    break;
                } else {
                    FragmentManager fragmentManager2 = settingsActivity.getFragmentManager();
                    Q4.d newInstance2 = Q4.d.newInstance(settingsActivity, true);
                    newInstance2.setTitle("AllDebrid Logout");
                    newInstance2.setMessage("Do you really want to unlink your Account ?");
                    newInstance2.setButton1("CANCEL", new A4.q(i7));
                    newInstance2.setButton2("YES, LOGOUT", new W0(settingsActivity, 14));
                    try {
                        newInstance2.show(fragmentManager2, "");
                        break;
                    } catch (Exception e8) {
                        e8.printStackTrace();
                        return;
                    }
                }
            case 12:
                int i16 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                App.getInstance().f14440s.edit().remove("offcloud_logged_in").apply();
                App.getInstance().f14440s.edit().remove("offcloud_apikey").apply();
                App.getInstance().f14440s.edit().remove("pref_offcloud_is_premium").apply();
                App.getInstance().f14440s.edit().remove("pref_offcloud_premium_until").apply();
                App.getInstance().f14440s.edit().remove("pref_offcloud_username").apply();
                G4.b.f1174a = false;
                settingsActivity.f15150X.setVisibility(8);
                settingsActivity.f15156Z.setVisibility(8);
                settingsActivity.f15153Y.setText("Link your OffCloud account to enjoy the best streaming experience");
                settingsActivity.f15153Y.setTextColor(settingsActivity.getResources().getColor(R.color.white_grey));
                try {
                    N4.a.Success(settingsActivity.getApplicationContext(), "Successfully Logged out", null, 48, 0);
                    break;
                } catch (Exception unused2) {
                    return;
                }
            case 13:
                int i17 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                App.getInstance().f14440s.edit().remove("torbox_logged_in").apply();
                App.getInstance().f14440s.edit().remove("torbox_apikey").apply();
                App.getInstance().f14440s.edit().remove("pref_torbox_is_premium").apply();
                App.getInstance().f14440s.edit().remove("pref_torbox_premium_until").apply();
                App.getInstance().f14440s.edit().remove("pref_torbox_username").apply();
                J4.b.f1541a = false;
                settingsActivity.f15159a0.setVisibility(8);
                settingsActivity.f15166c0.setVisibility(8);
                settingsActivity.f15163b0.setText("Link your Torbix account to enjoy the best streaming experience");
                settingsActivity.f15163b0.setTextColor(settingsActivity.getResources().getColor(R.color.white_grey));
                try {
                    N4.a.Success(settingsActivity.getApplicationContext(), "Successfully Logged out", null, 48, 0);
                    break;
                } catch (Exception unused3) {
                    return;
                }
            case 14:
                int i18 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                App.getInstance().f14440s.edit().remove("ALL_DEBRID_LOGGED_IN").apply();
                SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
                String str2 = T4.f.f3687a;
                edit.remove("all_debrid_apikey").apply();
                App.getInstance().f14440s.edit().remove("ALL_DEBRID_PREMIUM_UNTIL").apply();
                App.getInstance().f14440s.edit().remove("ALL_DEBRID_IS_PREMIUM").apply();
                App.getInstance().f14440s.edit().remove("ALL_DEBRID_USERNAME").apply();
                AllDebridCommon.f15806f = false;
                settingsActivity.f15168d0.setVisibility(8);
                settingsActivity.f15174f0.setVisibility(8);
                settingsActivity.f15171e0.setText("Link your AllDebrid account to enjoy the best streaming experience");
                settingsActivity.f15171e0.setTextColor(settingsActivity.getResources().getColor(R.color.white_grey));
                try {
                    N4.a.Success(settingsActivity.getApplicationContext(), "Successfully Logged out", null, 48, 0);
                    break;
                } catch (Exception unused4) {
                    return;
                }
            case 15:
                int i19 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                App.getInstance().f14440s.edit().remove("PREM_LOGGED_IN").apply();
                SharedPreferences.Editor edit2 = App.getInstance().f14440s.edit();
                String str3 = T4.f.f3687a;
                edit2.remove("prem_apikey").apply();
                App.getInstance().f14440s.edit().remove("PREM_PREMIUM_UNTIL").apply();
                PremiumizeCommon.f15822b = false;
                settingsActivity.f15096F.setVisibility(8);
                settingsActivity.f15176g0.setText("Link your Premiumize.me account to enjoy the best streaming experience");
                settingsActivity.f15176g0.setTextColor(settingsActivity.getResources().getColor(R.color.white_grey));
                try {
                    N4.a.Success(settingsActivity.getApplicationContext(), "Successfully Logged out", null, 48, 0);
                    break;
                } catch (Exception unused5) {
                    return;
                }
            case 16:
                int i20 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                if (!J4.b.f1541a) {
                    settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TorBoxApiKeyEntryActivity.class));
                    break;
                } else {
                    FragmentManager fragmentManager3 = settingsActivity.getFragmentManager();
                    Q4.d newInstance3 = Q4.d.newInstance(settingsActivity, true);
                    newInstance3.setTitle("Torbox Logout");
                    newInstance3.setMessage("Do you really want to unlink your Account ?");
                    newInstance3.setButton1("CANCEL", new A4.q(i7));
                    newInstance3.setButton2("YES, LOGOUT", new W0(settingsActivity, 13));
                    try {
                        newInstance3.show(fragmentManager3, "");
                        break;
                    } catch (Exception e9) {
                        e9.printStackTrace();
                        return;
                    }
                }
            case 17:
                int i21 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                App.getInstance().f14440s.edit().remove("ACCESS_TOKEN").apply();
                App.getInstance().f14440s.edit().remove("REFRESH_TOKEN").apply();
                App.getInstance().f14440s.edit().remove("TOKEN_TYPE").apply();
                App.getInstance().f14440s.edit().remove("IS_RD_LOGGED_IN").apply();
                RealDebridCommon.f15828m = false;
                settingsActivity.f15102H.setTextColor(settingsActivity.getResources().getColor(R.color.white_grey));
                settingsActivity.f15102H.setText("Link your Real Debrid account to enjoy the best streaming experience");
                try {
                    N4.a.Success(settingsActivity.getApplicationContext(), "Successfully Logged out", null, 48, 0);
                    break;
                } catch (Exception unused6) {
                    return;
                }
            case 18:
                int i22 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                Intent intent = new Intent(settingsActivity, (Class<?>) YouTubeWebviewActivity.class);
                intent.putExtra("url", App.getInstance().f14444w + "/#faqs");
                settingsActivity.startActivity(intent);
                break;
            case 19:
                int i23 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                if (!G4.b.f1174a) {
                    settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) OffCloudApiKeyEntryActivity.class));
                    break;
                } else {
                    FragmentManager fragmentManager4 = settingsActivity.getFragmentManager();
                    Q4.d newInstance4 = Q4.d.newInstance(settingsActivity, true);
                    newInstance4.setTitle("OffCloud Logout");
                    newInstance4.setMessage("Do you really want to unlink your Account ?");
                    newInstance4.setButton1("CANCEL", new A4.q(i7));
                    newInstance4.setButton2("YES, LOGOUT", new W0(settingsActivity, 12));
                    try {
                        newInstance4.show(fragmentManager4, "");
                        break;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
            case 20:
                int i24 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TraktSignInActivity.class));
                break;
            case 21:
                int i25 = SettingsActivity.f15080c2;
                settingsActivity.finish();
                App.getInstance().restartApp();
                break;
            default:
                int i26 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                int i27 = App.getInstance().f14440s.getInt("pref_tv_layout", 0);
                e.r rVar = new e.r(new ContextThemeWrapper(settingsActivity, R.style.AlertDialogCustom));
                rVar.setSingleChoiceItems(new f1(settingsActivity, R.layout.custom_select_dialog_singlechoice, settingsActivity.f15221x, i27), i27, new Y0(settingsActivity, 4));
                rVar.show();
                break;
        }
    }
}
