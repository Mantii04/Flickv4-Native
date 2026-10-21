package N;

import android.R;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.media3.common.C;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: d, reason: collision with root package name */
    public static int f2139d;

    /* renamed from: a, reason: collision with root package name */
    public final AccessibilityNodeInfo f2140a;

    /* renamed from: b, reason: collision with root package name */
    public int f2141b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f2142c = -1;

    @Deprecated
    public n(Object obj) {
        this.f2140a = (AccessibilityNodeInfo) obj;
    }

    public static String b(int i2) {
        if (i2 == 1) {
            return "ACTION_FOCUS";
        }
        if (i2 == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i2) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            case R.id.accessibilityActionScrollInDirection:
                return "ACTION_SCROLL_IN_DIRECTION";
            default:
                switch (i2) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i2) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                switch (i2) {
                                    case R.id.accessibilityActionImeEnter:
                                        return "ACTION_IME_ENTER";
                                    case R.id.accessibilityActionDragStart:
                                        return "ACTION_DRAG_START";
                                    case R.id.accessibilityActionDragDrop:
                                        return "ACTION_DRAG_DROP";
                                    case R.id.accessibilityActionDragCancel:
                                        return "ACTION_DRAG_CANCEL";
                                    default:
                                        return "ACTION_UNKNOWN";
                                }
                        }
                }
        }
    }

    public static ClickableSpan[] getClickableSpans(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    public static n obtain(View view) {
        return wrap(AccessibilityNodeInfo.obtain(view));
    }

    public static n wrap(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new n(accessibilityNodeInfo);
    }

    public final ArrayList a(String str) {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2140a;
        ArrayList<Integer> integerArrayList = accessibilityNodeInfo.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        accessibilityNodeInfo.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    public void addAction(int i2) {
        this.f2140a.addAction(i2);
    }

    public void addChild(View view) {
        this.f2140a.addChild(view);
    }

    public void addSpansToExtras(CharSequence charSequence, View view) {
        int i2;
        if (Build.VERSION.SDK_INT < 26) {
            AccessibilityNodeInfo accessibilityNodeInfo = this.f2140a;
            accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SparseArray sparseArray = (SparseArray) view.getTag(androidx.core.R.id.tag_accessibility_clickable_spans);
            if (sparseArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i7 = 0; i7 < sparseArray.size(); i7++) {
                    if (((WeakReference) sparseArray.valueAt(i7)).get() == null) {
                        arrayList.add(Integer.valueOf(i7));
                    }
                }
                for (int i8 = 0; i8 < arrayList.size(); i8++) {
                    sparseArray.remove(((Integer) arrayList.get(i8)).intValue());
                }
            }
            ClickableSpan[] clickableSpans = getClickableSpans(charSequence);
            if (clickableSpans == null || clickableSpans.length <= 0) {
                return;
            }
            getExtras().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", androidx.core.R.id.accessibility_action_clickable_span);
            SparseArray sparseArray2 = (SparseArray) view.getTag(androidx.core.R.id.tag_accessibility_clickable_spans);
            if (sparseArray2 == null) {
                sparseArray2 = new SparseArray();
                view.setTag(androidx.core.R.id.tag_accessibility_clickable_spans, sparseArray2);
            }
            for (int i9 = 0; i9 < clickableSpans.length; i9++) {
                ClickableSpan clickableSpan = clickableSpans[i9];
                int i10 = 0;
                while (true) {
                    if (i10 >= sparseArray2.size()) {
                        i2 = f2139d;
                        f2139d = i2 + 1;
                        break;
                    } else {
                        if (clickableSpan.equals((ClickableSpan) ((WeakReference) sparseArray2.valueAt(i10)).get())) {
                            i2 = sparseArray2.keyAt(i10);
                            break;
                        }
                        i10++;
                    }
                }
                sparseArray2.put(i2, new WeakReference(clickableSpans[i9]));
                ClickableSpan clickableSpan2 = clickableSpans[i9];
                Spanned spanned = (Spanned) charSequence;
                a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan2)));
                a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan2)));
                a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan2)));
                a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i2));
            }
        }
    }

    public final boolean c(int i2) {
        Bundle extras = getExtras();
        return extras != null && (extras.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i2) == i2;
    }

    public final void d(int i2, boolean z6) {
        Bundle extras = getExtras();
        if (extras != null) {
            int i7 = extras.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (~i2);
            if (!z6) {
                i2 = 0;
            }
            extras.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i2 | i7);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = nVar.f2140a;
        AccessibilityNodeInfo accessibilityNodeInfo2 = this.f2140a;
        if (accessibilityNodeInfo2 == null) {
            if (accessibilityNodeInfo != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo2.equals(accessibilityNodeInfo)) {
            return false;
        }
        return this.f2142c == nVar.f2142c && this.f2141b == nVar.f2141b;
    }

    public List<h> getActionList() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = this.f2140a.getActionList();
        if (actionList == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        int size = actionList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new h(actionList.get(i2), 0, null, null, null));
        }
        return arrayList;
    }

    @Deprecated
    public int getActions() {
        return this.f2140a.getActions();
    }

    @Deprecated
    public void getBoundsInParent(Rect rect) {
        this.f2140a.getBoundsInParent(rect);
    }

    public void getBoundsInScreen(Rect rect) {
        this.f2140a.getBoundsInScreen(rect);
    }

    public void getBoundsInWindow(Rect rect) {
        int i2 = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2140a;
        if (i2 >= 34) {
            k.getBoundsInWindow(accessibilityNodeInfo, rect);
            return;
        }
        Rect rect2 = (Rect) accessibilityNodeInfo.getExtras().getParcelable("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOUNDS_IN_WINDOW_KEY");
        if (rect2 != null) {
            rect.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
    }

    public int getChildCount() {
        return this.f2140a.getChildCount();
    }

    public CharSequence getClassName() {
        return this.f2140a.getClassName();
    }

    public CharSequence getContainerTitle() {
        int i2 = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2140a;
        return i2 >= 34 ? k.getContainerTitle(accessibilityNodeInfo) : accessibilityNodeInfo.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.CONTAINER_TITLE_KEY");
    }

    public CharSequence getContentDescription() {
        return this.f2140a.getContentDescription();
    }

    public CharSequence getError() {
        return this.f2140a.getError();
    }

    public Bundle getExtras() {
        return this.f2140a.getExtras();
    }

    public int getMaxTextLength() {
        return this.f2140a.getMaxTextLength();
    }

    public CharSequence getPackageName() {
        return this.f2140a.getPackageName();
    }

    public CharSequence getStateDescription() {
        int i2 = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2140a;
        return i2 >= 30 ? i.getStateDescription(accessibilityNodeInfo) : accessibilityNodeInfo.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY");
    }

    public CharSequence getText() {
        boolean isEmpty = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2140a;
        if (isEmpty) {
            return accessibilityNodeInfo.getText();
        }
        ArrayList a7 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        ArrayList a8 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        ArrayList a9 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        ArrayList a10 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(accessibilityNodeInfo.getText(), 0, accessibilityNodeInfo.getText().length()));
        for (int i2 = 0; i2 < a7.size(); i2++) {
            spannableString.setSpan(new C0201a(((Integer) a10.get(i2)).intValue(), this, getExtras().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), ((Integer) a7.get(i2)).intValue(), ((Integer) a8.get(i2)).intValue(), ((Integer) a9.get(i2)).intValue());
        }
        return spannableString;
    }

    public CharSequence getTooltipText() {
        CharSequence tooltipText;
        int i2 = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2140a;
        if (i2 < 28) {
            return accessibilityNodeInfo.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY");
        }
        tooltipText = accessibilityNodeInfo.getTooltipText();
        return tooltipText;
    }

    public String getUniqueId() {
        int i2 = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2140a;
        return i2 >= 33 ? j.getUniqueId(accessibilityNodeInfo) : accessibilityNodeInfo.getExtras().getString("androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY");
    }

    public String getViewIdResourceName() {
        return this.f2140a.getViewIdResourceName();
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2140a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public boolean isAccessibilityDataSensitive() {
        return Build.VERSION.SDK_INT >= 34 ? k.isAccessibilityDataSensitive(this.f2140a) : c(64);
    }

    public boolean isAccessibilityFocused() {
        return this.f2140a.isAccessibilityFocused();
    }

    public boolean isCheckable() {
        return this.f2140a.isCheckable();
    }

    public boolean isChecked() {
        return this.f2140a.isChecked();
    }

    public boolean isClickable() {
        return this.f2140a.isClickable();
    }

    public boolean isContextClickable() {
        return this.f2140a.isContextClickable();
    }

    public boolean isEnabled() {
        return this.f2140a.isEnabled();
    }

    public boolean isFocusable() {
        return this.f2140a.isFocusable();
    }

    public boolean isFocused() {
        return this.f2140a.isFocused();
    }

    public boolean isGranularScrollingSupported() {
        return c(C.BUFFER_FLAG_NOT_DEPENDED_ON);
    }

    public boolean isImportantForAccessibility() {
        boolean isImportantForAccessibility;
        if (Build.VERSION.SDK_INT < 24) {
            return true;
        }
        isImportantForAccessibility = this.f2140a.isImportantForAccessibility();
        return isImportantForAccessibility;
    }

    public boolean isLongClickable() {
        return this.f2140a.isLongClickable();
    }

    public boolean isPassword() {
        return this.f2140a.isPassword();
    }

    public boolean isScrollable() {
        return this.f2140a.isScrollable();
    }

    public boolean isSelected() {
        return this.f2140a.isSelected();
    }

    public boolean isShowingHintText() {
        boolean isShowingHintText;
        if (Build.VERSION.SDK_INT < 26) {
            return c(4);
        }
        isShowingHintText = this.f2140a.isShowingHintText();
        return isShowingHintText;
    }

    public boolean isTextSelectable() {
        return Build.VERSION.SDK_INT >= 33 ? j.isTextSelectable(this.f2140a) : c(8388608);
    }

    public boolean isVisibleToUser() {
        return this.f2140a.isVisibleToUser();
    }

    public boolean performAction(int i2, Bundle bundle) {
        return this.f2140a.performAction(i2, bundle);
    }

    public boolean removeAction(h hVar) {
        return this.f2140a.removeAction((AccessibilityNodeInfo.AccessibilityAction) hVar.f2133a);
    }

    public void setAccessibilityFocused(boolean z6) {
        this.f2140a.setAccessibilityFocused(z6);
    }

    @Deprecated
    public void setBoundsInParent(Rect rect) {
        this.f2140a.setBoundsInParent(rect);
    }

    public void setBoundsInScreen(Rect rect) {
        this.f2140a.setBoundsInScreen(rect);
    }

    public void setCheckable(boolean z6) {
        this.f2140a.setCheckable(z6);
    }

    public void setChecked(boolean z6) {
        this.f2140a.setChecked(z6);
    }

    public void setClassName(CharSequence charSequence) {
        this.f2140a.setClassName(charSequence);
    }

    public void setClickable(boolean z6) {
        this.f2140a.setClickable(z6);
    }

    public void setCollectionInfo(Object obj) {
        this.f2140a.setCollectionInfo(obj == null ? null : ((l) obj).f2137a);
    }

    public void setCollectionItemInfo(Object obj) {
        this.f2140a.setCollectionItemInfo(obj == null ? null : ((m) obj).f2138a);
    }

    public void setContentDescription(CharSequence charSequence) {
        this.f2140a.setContentDescription(charSequence);
    }

    public void setDismissable(boolean z6) {
        this.f2140a.setDismissable(z6);
    }

    public void setEnabled(boolean z6) {
        this.f2140a.setEnabled(z6);
    }

    public void setError(CharSequence charSequence) {
        this.f2140a.setError(charSequence);
    }

    public void setFocusable(boolean z6) {
        this.f2140a.setFocusable(z6);
    }

    public void setFocused(boolean z6) {
        this.f2140a.setFocused(z6);
    }

    public void setHeading(boolean z6) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2140a.setHeading(z6);
        } else {
            d(2, z6);
        }
    }

    public void setHintText(CharSequence charSequence) {
        int i2 = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2140a;
        if (i2 >= 26) {
            accessibilityNodeInfo.setHintText(charSequence);
        } else {
            accessibilityNodeInfo.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    public void setLabelFor(View view) {
        this.f2140a.setLabelFor(view);
    }

    public void setMaxTextLength(int i2) {
        this.f2140a.setMaxTextLength(i2);
    }

    public void setPackageName(CharSequence charSequence) {
        this.f2140a.setPackageName(charSequence);
    }

    public void setPaneTitle(CharSequence charSequence) {
        int i2 = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2140a;
        if (i2 >= 28) {
            accessibilityNodeInfo.setPaneTitle(charSequence);
        } else {
            accessibilityNodeInfo.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    public void setParent(View view) {
        this.f2141b = -1;
        this.f2140a.setParent(view);
    }

    public void setRoleDescription(CharSequence charSequence) {
        this.f2140a.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", charSequence);
    }

    public void setScreenReaderFocusable(boolean z6) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2140a.setScreenReaderFocusable(z6);
        } else {
            d(1, z6);
        }
    }

    public void setScrollable(boolean z6) {
        this.f2140a.setScrollable(z6);
    }

    public void setSelected(boolean z6) {
        this.f2140a.setSelected(z6);
    }

    public void setShowingHintText(boolean z6) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2140a.setShowingHintText(z6);
        } else {
            d(4, z6);
        }
    }

    public void setSource(View view) {
        this.f2142c = -1;
        this.f2140a.setSource(view);
    }

    public void setStateDescription(CharSequence charSequence) {
        int i2 = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2140a;
        if (i2 >= 30) {
            i.setStateDescription(accessibilityNodeInfo, charSequence);
        } else {
            accessibilityNodeInfo.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
    }

    public void setText(CharSequence charSequence) {
        this.f2140a.setText(charSequence);
    }

    public void setTraversalAfter(View view) {
        this.f2140a.setTraversalAfter(view);
    }

    public void setVisibleToUser(boolean z6) {
        this.f2140a.setVisibleToUser(z6);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        getBoundsInParent(rect);
        sb.append("; boundsInParent: " + rect);
        getBoundsInScreen(rect);
        sb.append("; boundsInScreen: " + rect);
        getBoundsInWindow(rect);
        sb.append("; boundsInWindow: " + rect);
        sb.append("; packageName: ");
        sb.append(getPackageName());
        sb.append("; className: ");
        sb.append(getClassName());
        sb.append("; text: ");
        sb.append(getText());
        sb.append("; error: ");
        sb.append(getError());
        sb.append("; maxTextLength: ");
        sb.append(getMaxTextLength());
        sb.append("; stateDescription: ");
        sb.append(getStateDescription());
        sb.append("; contentDescription: ");
        sb.append(getContentDescription());
        sb.append("; tooltipText: ");
        sb.append(getTooltipText());
        sb.append("; viewIdResName: ");
        sb.append(getViewIdResourceName());
        sb.append("; uniqueId: ");
        sb.append(getUniqueId());
        sb.append("; checkable: ");
        sb.append(isCheckable());
        sb.append("; checked: ");
        sb.append(isChecked());
        sb.append("; focusable: ");
        sb.append(isFocusable());
        sb.append("; focused: ");
        sb.append(isFocused());
        sb.append("; selected: ");
        sb.append(isSelected());
        sb.append("; clickable: ");
        sb.append(isClickable());
        sb.append("; longClickable: ");
        sb.append(isLongClickable());
        sb.append("; contextClickable: ");
        sb.append(isContextClickable());
        sb.append("; enabled: ");
        sb.append(isEnabled());
        sb.append("; password: ");
        sb.append(isPassword());
        sb.append("; scrollable: " + isScrollable());
        sb.append("; containerTitle: ");
        sb.append(getContainerTitle());
        sb.append("; granularScrollingSupported: ");
        sb.append(isGranularScrollingSupported());
        sb.append("; importantForAccessibility: ");
        sb.append(isImportantForAccessibility());
        sb.append("; visible: ");
        sb.append(isVisibleToUser());
        sb.append("; isTextSelectable: ");
        sb.append(isTextSelectable());
        sb.append("; accessibilityDataSensitive: ");
        sb.append(isAccessibilityDataSensitive());
        sb.append("; [");
        List<h> actionList = getActionList();
        for (int i2 = 0; i2 < actionList.size(); i2++) {
            h hVar = actionList.get(i2);
            String b7 = b(hVar.getId());
            if (b7.equals("ACTION_UNKNOWN") && hVar.getLabel() != null) {
                b7 = hVar.getLabel().toString();
            }
            sb.append(b7);
            if (i2 != actionList.size() - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public AccessibilityNodeInfo unwrap() {
        return this.f2140a;
    }

    public static n obtain() {
        return wrap(AccessibilityNodeInfo.obtain());
    }

    public void addAction(h hVar) {
        this.f2140a.addAction((AccessibilityNodeInfo.AccessibilityAction) hVar.f2133a);
    }

    public void addChild(View view, int i2) {
        this.f2140a.addChild(view, i2);
    }

    public static n obtain(n nVar) {
        return wrap(AccessibilityNodeInfo.obtain(nVar.f2140a));
    }

    public void setParent(View view, int i2) {
        this.f2141b = i2;
        this.f2140a.setParent(view, i2);
    }

    public void setSource(View view, int i2) {
        this.f2142c = i2;
        this.f2140a.setSource(view, i2);
    }

    public n(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f2140a = accessibilityNodeInfo;
    }

    @Deprecated
    public void recycle() {
    }
}
