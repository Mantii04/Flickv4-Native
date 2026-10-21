package y4;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.widget.Toast;
import flix.com.vision.App;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.models.SubEvent;
import org.apache.commons.lang3.StringUtils;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final /* synthetic */ class Y0 implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21195b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SettingsActivity f21196e;

    public /* synthetic */ Y0(SettingsActivity settingsActivity, int i2) {
        this.f21195b = i2;
        this.f21196e = settingsActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        SettingsActivity settingsActivity = this.f21196e;
        switch (this.f21195b) {
            case 0:
                int i7 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                App.getInstance().f14440s.edit().putInt("pref_subtitle_size", i2).apply();
                settingsActivity.f15178h0.setText(settingsActivity.f15158Z1[i2]);
                dialogInterface.dismiss();
                SubEvent subEvent = new SubEvent();
                subEvent.size_index = i2;
                EventBus.getDefault().post(subEvent);
                break;
            case 1:
                int i8 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                dialogInterface.dismiss();
                App.getInstance().f14431b = true;
                SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
                edit.putInt("sub_lang_index_1", i2);
                edit.putString("sub_lang_code_1", ((String) settingsActivity.f15170e.get(i2)).split("--")[0]);
                edit.putString("sub_lang_name_1", settingsActivity.f15155Y1[i2]);
                edit.apply();
                settingsActivity.f15180i0.setText(settingsActivity.f15155Y1[i2]);
                break;
            case 2:
                int i9 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                dialogInterface.dismiss();
                if (i2 != 0 && i2 != 4) {
                    Toast.makeText(settingsActivity.getBaseContext(), "Please make sure the selected App is installed to avoid issues", 1).show();
                }
                App.getInstance().f14440s.edit().putInt("pref_adult_zone_player", i2).apply();
                settingsActivity.f();
                break;
            case 3:
                int i10 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                dialogInterface.dismiss();
                if (i2 != 0 && i2 != 4) {
                    Toast.makeText(settingsActivity.getBaseContext(), "Please make sure the selected App is installed to avoid issues", 1).show();
                }
                App.getInstance().f14440s.edit().putInt("player_index", i2).apply();
                settingsActivity.i();
                break;
            case 4:
                int i11 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                dialogInterface.dismiss();
                Toast.makeText(settingsActivity.getBaseContext(), "Please restart to see the changes", 1).show();
                App.getInstance().f14440s.edit().putInt("pref_tv_layout", i2).apply();
                settingsActivity.h();
                break;
            case 5:
                int i12 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                dialogInterface.dismiss();
                App.getInstance().f14440s.edit().putInt("pref_auto_play_minutes", i2).apply();
                settingsActivity.f15108J.setText(settingsActivity.f15224y[i2]);
                break;
            case 6:
                CharSequence[] charSequenceArr = settingsActivity.f15161a2;
                try {
                    settingsActivity.f15165b2 = true;
                    App.getInstance().f14440s.edit().putInt("pref_subtitle_encoding_index", i2).apply();
                    settingsActivity.f15087C.setText(charSequenceArr[i2]);
                    dialogInterface.dismiss();
                    if (i2 > 0) {
                        String charSequence = charSequenceArr[i2].toString();
                        App.getInstance().f14440s.edit().putString("pref_subtitle_encoding_label", charSequence.split(StringUtils.SPACE)[charSequence.split(StringUtils.SPACE).length - 1].trim()).apply();
                    } else {
                        App.getInstance().f14440s.edit().putString("pref_subtitle_encoding_label", "utf-8").apply();
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                int i13 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                dialogInterface.dismiss();
                App.getInstance().f14431b = true;
                App.getInstance().f14440s.edit().putInt("subtitle_source_index_2", i2).apply();
                if (i2 <= 0) {
                    int i14 = App.getInstance().f14440s.getInt("sub_lang_index_1", 19);
                    settingsActivity.f15180i0.setText(settingsActivity.f15155Y1[i14]);
                    App.getInstance().f14440s.edit().putString("sub_lang_name_1", settingsActivity.f15155Y1[i14]).apply();
                    settingsActivity.f15105I.setText(settingsActivity.f15227z[i2]);
                    break;
                } else {
                    settingsActivity.f15105I.setText(settingsActivity.f15227z[i2]);
                    settingsActivity.k(null, true);
                    break;
                }
        }
    }
}
