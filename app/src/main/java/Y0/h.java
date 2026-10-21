package Y0;

import P3.v;
import android.annotation.SuppressLint;
import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.HorizontalTextInVerticalContextSpan;
import androidx.media3.common.text.RubySpan;
import androidx.media3.common.text.SpanUtil;
import androidx.media3.common.text.TextEmphasisSpan;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import java.util.ArrayDeque;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class h {
    @SuppressLint({"WrongConstant"})
    public static void applyStylesToSpan(Spannable spannable, int i2, int i7, i iVar, c cVar, Map<String, i> map, int i8) {
        c cVar2;
        i resolveStyle;
        int i9;
        if (iVar.getStyle() != -1) {
            spannable.setSpan(new StyleSpan(iVar.getStyle()), i2, i7, 33);
        }
        if (iVar.isLinethrough()) {
            spannable.setSpan(new StrikethroughSpan(), i2, i7, 33);
        }
        if (iVar.isUnderline()) {
            spannable.setSpan(new UnderlineSpan(), i2, i7, 33);
        }
        if (iVar.hasFontColor()) {
            SpanUtil.addOrReplaceSpan(spannable, new ForegroundColorSpan(iVar.getFontColor()), i2, i7, 33);
        }
        if (iVar.hasBackgroundColor()) {
            SpanUtil.addOrReplaceSpan(spannable, new BackgroundColorSpan(iVar.getBackgroundColor()), i2, i7, 33);
        }
        if (iVar.getFontFamily() != null) {
            SpanUtil.addOrReplaceSpan(spannable, new TypefaceSpan(iVar.getFontFamily()), i2, i7, 33);
        }
        if (iVar.getTextEmphasis() != null) {
            b bVar = (b) v.checkNotNull(iVar.getTextEmphasis());
            int i10 = bVar.f4270a;
            if (i10 == -1) {
                i10 = (i8 == 2 || i8 == 1) ? 3 : 1;
                i9 = 1;
            } else {
                i9 = bVar.f4271b;
            }
            int i11 = bVar.f4272c;
            if (i11 == -2) {
                i11 = 1;
            }
            SpanUtil.addOrReplaceSpan(spannable, new TextEmphasisSpan(i10, i9, i11), i2, i7, 33);
        }
        int rubyType = iVar.getRubyType();
        if (rubyType == 2) {
            while (true) {
                cVar2 = null;
                if (cVar == null) {
                    cVar = null;
                    break;
                }
                i resolveStyle2 = resolveStyle(cVar.f4278f, cVar.getStyleIds(), map);
                if (resolveStyle2 != null && resolveStyle2.getRubyType() == 1) {
                    break;
                } else {
                    cVar = cVar.f4282j;
                }
            }
            if (cVar != null) {
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.push(cVar);
                while (true) {
                    if (arrayDeque.isEmpty()) {
                        break;
                    }
                    c cVar3 = (c) arrayDeque.pop();
                    i resolveStyle3 = resolveStyle(cVar3.f4278f, cVar3.getStyleIds(), map);
                    if (resolveStyle3 != null && resolveStyle3.getRubyType() == 3) {
                        cVar2 = cVar3;
                        break;
                    }
                    for (int childCount = cVar3.getChildCount() - 1; childCount >= 0; childCount--) {
                        arrayDeque.push(cVar3.getChild(childCount));
                    }
                }
                if (cVar2 != null) {
                    if (cVar2.getChildCount() != 1 || cVar2.getChild(0).f4274b == null) {
                        Log.i("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                    } else {
                        String str = (String) Util.castNonNull(cVar2.getChild(0).f4274b);
                        i resolveStyle4 = resolveStyle(cVar2.f4278f, cVar2.getStyleIds(), map);
                        int rubyPosition = resolveStyle4 != null ? resolveStyle4.getRubyPosition() : -1;
                        if (rubyPosition == -1 && (resolveStyle = resolveStyle(cVar.f4278f, cVar.getStyleIds(), map)) != null) {
                            rubyPosition = resolveStyle.getRubyPosition();
                        }
                        spannable.setSpan(new RubySpan(str, rubyPosition), i2, i7, 33);
                    }
                }
            }
        } else if (rubyType == 3 || rubyType == 4) {
            spannable.setSpan(new a(), i2, i7, 33);
        }
        if (iVar.getTextCombine()) {
            SpanUtil.addOrReplaceSpan(spannable, new HorizontalTextInVerticalContextSpan(), i2, i7, 33);
        }
        int fontSizeUnit = iVar.getFontSizeUnit();
        if (fontSizeUnit == 1) {
            SpanUtil.addOrReplaceSpan(spannable, new AbsoluteSizeSpan((int) iVar.getFontSize(), true), i2, i7, 33);
        } else if (fontSizeUnit == 2) {
            SpanUtil.addOrReplaceSpan(spannable, new RelativeSizeSpan(iVar.getFontSize()), i2, i7, 33);
        } else {
            if (fontSizeUnit != 3) {
                return;
            }
            SpanUtil.addInheritedRelativeSizeSpan(spannable, iVar.getFontSize() / 100.0f, i2, i7, 33);
        }
    }

    public static i resolveStyle(i iVar, String[] strArr, Map<String, i> map) {
        int i2 = 0;
        if (iVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                i iVar2 = new i();
                int length = strArr.length;
                while (i2 < length) {
                    iVar2.chain(map.get(strArr[i2]));
                    i2++;
                }
                return iVar2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                return iVar.chain(map.get(strArr[0]));
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i2 < length2) {
                    iVar.chain(map.get(strArr[i2]));
                    i2++;
                }
            }
        }
        return iVar;
    }
}
