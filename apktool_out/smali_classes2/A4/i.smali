.class public final LA4/i;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const p1, 0x1090012

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/CheckedTextView;

    .line 6
    .line 7
    const/high16 p2, 0x41800000    # 16.0f

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 10
    .line 11
    .line 12
    const/16 p2, 0x1e

    .line 13
    .line 14
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method
