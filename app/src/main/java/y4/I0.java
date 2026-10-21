package y4;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.Toast;
import flix.com.vision.activities.SearchActivityTV;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final /* synthetic */ class I0 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21135b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SearchActivityTV f21136e;

    public /* synthetic */ I0(SearchActivityTV searchActivityTV, int i2) {
        this.f21135b = i2;
        this.f21136e = searchActivityTV;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SearchActivityTV searchActivityTV = this.f21136e;
        switch (this.f21135b) {
            case 0:
                int i2 = SearchActivityTV.f14981I;
                searchActivityTV.getClass();
                searchActivityTV.startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:flix.com.vision")), 2000);
                break;
            case 1:
                int i7 = SearchActivityTV.f14981I;
                searchActivityTV.onLetterClicked(StringUtils.SPACE);
                break;
            case 2:
                searchActivityTV.f14996p = SearchActivityTV.removeLastChar(searchActivityTV.f14996p);
                searchActivityTV.f();
                break;
            case 3:
                if (!searchActivityTV.f14996p.isEmpty()) {
                    searchActivityTV.f14996p = "";
                    searchActivityTV.f();
                    break;
                }
                break;
            default:
                int i8 = SearchActivityTV.f14981I;
                searchActivityTV.getClass();
                try {
                    Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
                    intent.putExtra("android.speech.extra.PROMPT", "Say a Movie Title or Actor name");
                    intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
                    searchActivityTV.startActivityForResult(intent, 1210);
                    break;
                } catch (Exception unused) {
                    Toast.makeText(searchActivityTV.getBaseContext(), "Voice Search is not supported on this device", 1).show();
                }
        }
    }
}
