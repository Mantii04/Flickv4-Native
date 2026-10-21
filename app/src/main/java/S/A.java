package S;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.view.ActionMode;
import android.widget.TextView;

/* loaded from: classes.dex */
public abstract class A {
    public static Drawable[] getCompoundDrawablesRelative(TextView textView) {
        return textView.getCompoundDrawablesRelative();
    }

    public static int getFirstBaselineToTopHeight(TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    public static int getLastBaselineToBottomHeight(TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    public static int getMaxLines(TextView textView) {
        return textView.getMaxLines();
    }

    public static K.h getTextMetricsParams(TextView textView) {
        TextDirectionHeuristic textDirectionHeuristic;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return new K.h(y.c(textView));
        }
        K.g gVar = new K.g(new TextPaint(textView.getPaint()));
        gVar.setBreakStrategy(w.a(textView));
        gVar.setHyphenationFrequency(w.d(textView));
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else {
            if (i2 < 28 || (textView.getInputType() & 15) != 3) {
                boolean z6 = textView.getLayoutDirection() == 1;
                switch (textView.getTextDirection()) {
                    case 2:
                        textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                        break;
                    case 3:
                        textDirectionHeuristic = TextDirectionHeuristics.LTR;
                        break;
                    case 4:
                        textDirectionHeuristic = TextDirectionHeuristics.RTL;
                        break;
                    case 5:
                        textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                        break;
                    case 6:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                        break;
                    case 7:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    default:
                        if (!z6) {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                            break;
                        } else {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                            break;
                        }
                }
            } else {
                byte directionality = Character.getDirectionality(y.b(x.a(textView.getTextLocale()))[0].codePointAt(0));
                textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            }
        }
        gVar.setTextDirection(textDirectionHeuristic);
        return gVar.build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setCompoundDrawableTintList(TextView textView, ColorStateList colorStateList) {
        L.h.checkNotNull(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            w.f(textView, colorStateList);
        } else if (textView instanceof D) {
            ((D) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setCompoundDrawableTintMode(TextView textView, PorterDuff.Mode mode) {
        L.h.checkNotNull(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            w.g(textView, mode);
        } else if (textView instanceof D) {
            ((D) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }

    public static void setCompoundDrawablesRelative(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    public static void setFirstBaselineToTopHeight(TextView textView, int i2) {
        L.h.checkArgumentNonnegative(i2);
        if (Build.VERSION.SDK_INT >= 28) {
            y.d(textView, i2);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i7 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i2 > Math.abs(i7)) {
            textView.setPadding(textView.getPaddingLeft(), i2 + i7, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static void setLastBaselineToBottomHeight(TextView textView, int i2) {
        L.h.checkArgumentNonnegative(i2);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i7 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i2 > Math.abs(i7)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i2 - i7);
        }
    }

    public static void setLineHeight(TextView textView, int i2) {
        L.h.checkArgumentNonnegative(i2);
        if (i2 != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i2 - r0, 1.0f);
        }
    }

    public static void setPrecomputedText(TextView textView, K.i iVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        getTextMetricsParams(textView);
        throw null;
    }

    public static void setTextAppearance(TextView textView, int i2) {
        textView.setTextAppearance(i2);
    }

    public static void setTextMetricsParams(TextView textView, K.h hVar) {
        TextDirectionHeuristic textDirectionHeuristic;
        TextDirectionHeuristic textDirection = hVar.getTextDirection();
        TextDirectionHeuristic textDirectionHeuristic2 = TextDirectionHeuristics.FIRSTSTRONG_RTL;
        int i2 = 1;
        if (textDirection != textDirectionHeuristic2 && textDirection != (textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            if (textDirection == TextDirectionHeuristics.ANYRTL_LTR) {
                i2 = 2;
            } else if (textDirection == TextDirectionHeuristics.LTR) {
                i2 = 3;
            } else if (textDirection == TextDirectionHeuristics.RTL) {
                i2 = 4;
            } else if (textDirection == TextDirectionHeuristics.LOCALE) {
                i2 = 5;
            } else if (textDirection == textDirectionHeuristic) {
                i2 = 6;
            } else if (textDirection == textDirectionHeuristic2) {
                i2 = 7;
            }
        }
        textView.setTextDirection(i2);
        textView.getPaint().set(hVar.getTextPaint());
        w.e(textView, hVar.getBreakStrategy());
        w.h(textView, hVar.getHyphenationFrequency());
    }

    public static ActionMode.Callback unwrapCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        return (!(callback instanceof z) || Build.VERSION.SDK_INT < 26) ? callback : ((z) callback).f3244a;
    }

    public static ActionMode.Callback wrapCustomSelectionActionModeCallback(TextView textView, ActionMode.Callback callback) {
        int i2 = Build.VERSION.SDK_INT;
        return (i2 < 26 || i2 > 27 || (callback instanceof z) || callback == null) ? callback : new z(textView, callback);
    }
}
