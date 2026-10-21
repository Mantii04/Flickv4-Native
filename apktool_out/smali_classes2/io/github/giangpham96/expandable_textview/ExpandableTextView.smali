.class public final Lio/github/giangpham96/expandable_textview/ExpandableTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# static fields
.field public static final synthetic A:I


# instance fields
.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:I

.field public u:Z

.field public v:I

.field public w:Landroid/animation/ValueAnimator;

.field public x:Landroid/text/SpannableString;

.field public y:Landroid/text/StaticLayout;

.field public z:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string p3, ""

    iput-object p3, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->q:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->r:Ljava/lang/String;

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->s:I

    const v0, 0x106001a

    .line 7
    invoke-static {p1, v0}, LA/h;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->t:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->u:Z

    .line 9
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->x:Landroid/text/SpannableString;

    .line 10
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 11
    sget-object p3, Lio/github/giangpham96/expandable_textview/R$styleable;->ExpandableTextView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026eable.ExpandableTextView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget p2, Lio/github/giangpham96/expandable_textview/R$styleable;->ExpandableTextView_expandAction:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->r:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p2}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->setExpandAction(Ljava/lang/String;)V

    .line 13
    sget p2, Lio/github/giangpham96/expandable_textview/R$styleable;->ExpandableTextView_expandActionColor:I

    iget p3, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->t:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->setExpandActionColor(I)V

    .line 14
    sget p2, Lio/github/giangpham96/expandable_textview/R$styleable;->ExpandableTextView_originalText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->q:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p2}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->setOriginalText(Ljava/lang/String;)V

    .line 15
    sget p2, Lio/github/giangpham96/expandable_textview/R$styleable;->ExpandableTextView_limitedMaxLines:I

    iget p3, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->s:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->setLimitedMaxLines(I)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_3

    iget p2, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->s:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p3

    if-gt p2, p3, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p1

    iget p2, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->s:I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\n                maxLines ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") must be greater than or equal to limitedMaxLines ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). \n                maxLines can be -1 if there is no upper limit for lineCount.\n            "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lkotlin/text/a;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    new-instance p1, LB4/a;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, LB4/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/g;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getCollapsedDisplayedText$p(Lio/github/giangpham96/expandable_textview/ExpandableTextView;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCollapsed$p(Lio/github/giangpham96/expandable_textview/ExpandableTextView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic p(Lio/github/giangpham96/expandable_textview/ExpandableTextView;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    invoke-virtual {p0, v0, p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->o(IZ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getCollapsed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getExpandAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExpandActionColor()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public final getExpanded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->u:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public final getLimitedMaxLines()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOriginalText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n(IILjava/lang/CharSequence;)Landroid/text/StaticLayout;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p2, v0}, LM5/g;->coerceAtLeast(II)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7
    .line 8
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {p3, v0, v2, v3, p2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2, p1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    invoke-virtual {p1, p2, p3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "{\n            StaticLayo\u2026       .build()\n        }"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method public final o(IZ)V
    .locals 13

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->s:I

    .line 5
    .line 6
    iget-object v1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->q:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v0, p1, v1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->n(IILjava/lang/CharSequence;)Landroid/text/StaticLayout;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->x:Landroid/text/SpannableString;

    .line 16
    .line 17
    invoke-virtual {p0, v1, p1, p2}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->n(IILjava/lang/CharSequence;)Landroid/text/StaticLayout;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->y:Landroid/text/StaticLayout;

    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object v2, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->q:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p2, v2}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_7

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v2, p2}, LM5/g;->until(II)LM5/e;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    move v3, v2

    .line 53
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    move-object v4, p2

    .line 60
    check-cast v4, Lv5/w;

    .line 61
    .line 62
    invoke-virtual {v4}, Lv5/w;->nextInt()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineWidth(I)F

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    float-to-int v4, v4

    .line 71
    add-int/2addr v3, v4

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    int-to-float p2, v3

    .line 74
    iget-object v3, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->y:Landroid/text/StaticLayout;

    .line 75
    .line 76
    invoke-static {v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    sub-float/2addr p2, v2

    .line 84
    iget-object v2, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->q:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 91
    .line 92
    invoke-static {v2, v3, p2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const-string p2, "textWithoutCta"

    .line 97
    .line 98
    invoke-static {v5, p2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/4 v9, 0x6

    .line 102
    const/4 v10, 0x0

    .line 103
    const/16 v6, 0x2026

    .line 104
    .line 105
    const/4 v7, 0x0

    .line 106
    const/4 v8, 0x0

    .line 107
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    const-string v2, ""

    .line 112
    .line 113
    invoke-static {v5, v2}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_3

    .line 118
    .line 119
    iget-object p1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->y:Landroid/text/StaticLayout;

    .line 120
    .line 121
    invoke-static {p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_3
    const/4 v2, -0x1

    .line 131
    if-ne p2, v2, :cond_4

    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :cond_4
    add-int/lit8 p1, p2, 0x1

    .line 136
    .line 137
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 138
    .line 139
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iget-object v3, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->y:Landroid/text/StaticLayout;

    .line 147
    .line 148
    invoke-static {v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v2, p2, p1, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    const-string p1, "span"

    .line 160
    .line 161
    invoke-static {v4, p1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 169
    .line 170
    const/16 p2, 0x1c

    .line 171
    .line 172
    if-lt p1, p2, :cond_5

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {v4, p1, v8}, Lcom/google/firebase/crashlytics/internal/common/a;->l(Landroid/text/SpannableStringBuilder;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 183
    .line 184
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/a;->j(Landroid/text/DynamicLayout$Builder;)Landroid/text/DynamicLayout$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/a;->z(Landroid/text/DynamicLayout$Builder;)Landroid/text/DynamicLayout$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-static {p1, p2, v0}, Lcom/google/firebase/crashlytics/internal/common/a;->k(Landroid/text/DynamicLayout$Builder;FF)Landroid/text/DynamicLayout$Builder;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/a;->m(Landroid/text/DynamicLayout$Builder;)Landroid/text/DynamicLayout;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    move-object v5, v4

    .line 209
    goto :goto_1

    .line 210
    :cond_5
    move-object v5, v4

    .line 211
    new-instance v4, Landroid/text/DynamicLayout;

    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    const/4 v12, 0x0

    .line 228
    move-object v6, v5

    .line 229
    invoke-direct/range {v4 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 230
    .line 231
    .line 232
    move-object p1, v4

    .line 233
    :goto_1
    const-string p2, "if (Build.VERSION.SDK_IN\u2026ngExtra, false)\n        }"

    .line 234
    .line 235
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget-object p2, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->y:Landroid/text/StaticLayout;

    .line 239
    .line 240
    invoke-static {p2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    const/4 v6, 0x0

    .line 252
    const/4 v7, 0x0

    .line 253
    const/4 v8, 0x6

    .line 254
    const/4 v9, 0x0

    .line 255
    move-object v4, v5

    .line 256
    move-object v5, p2

    .line 257
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    move-object v5, v4

    .line 262
    sub-int/2addr p2, v1

    .line 263
    :goto_2
    if-ltz p2, :cond_6

    .line 264
    .line 265
    invoke-virtual {p1}, Landroid/text/DynamicLayout;->getLineCount()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    iget v1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->s:I

    .line 270
    .line 271
    if-le v0, v1, :cond_6

    .line 272
    .line 273
    add-int/lit8 v0, p2, 0x1

    .line 274
    .line 275
    invoke-virtual {v5, p2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 276
    .line 277
    .line 278
    add-int/lit8 p2, p2, -0x1

    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_6
    move-object p1, v5

    .line 282
    goto :goto_3

    .line 283
    :cond_7
    iget-object p1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->q:Ljava/lang/String;

    .line 284
    .line 285
    :goto_3
    iput-object p1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->z:Ljava/lang/CharSequence;

    .line 286
    .line 287
    iget-boolean p2, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->u:Z

    .line 288
    .line 289
    if-eqz p2, :cond_8

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_8
    iget-object p1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->q:Ljava/lang/String;

    .line 293
    .line 294
    :goto_4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->w:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget v1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->v:I

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->w:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->v:I

    .line 32
    .line 33
    invoke-virtual {p0, v0, v2}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->o(IZ)V

    .line 34
    .line 35
    .line 36
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .line 1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setExpandAction(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->r:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x2026

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    new-instance v1, Landroid/text/SpannableString;

    .line 19
    .line 20
    const-string v2, "\u2026 "

    .line 21
    .line 22
    invoke-static {v2, p1}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->x:Landroid/text/SpannableString;

    .line 30
    .line 31
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    .line 32
    .line 33
    iget v2, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->t:I

    .line 34
    .line 35
    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->x:Landroid/text/SpannableString;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/16 v3, 0x21

    .line 45
    .line 46
    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    invoke-static {p0, p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->p(Lio/github/giangpham96/expandable_textview/ExpandableTextView;Z)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final setExpandActionColor(I)V
    .locals 4

    .line 1
    iput p1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->t:I

    .line 2
    .line 3
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/16 p1, 0x2026

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->x:Landroid/text/SpannableString;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v3, 0x21

    .line 25
    .line 26
    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-static {p0, p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->p(Lio/github/giangpham96/expandable_textview/ExpandableTextView;Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final setLimitedMaxLines(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gt p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "\n                    maxLines ("

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ") must be greater than or equal to limitedMaxLines ("

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, "). \n                    maxLines can be -1 if there is no upper limit for lineCount.\n                "

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lkotlin/text/a;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_1
    :goto_0
    iput p1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->s:I

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    invoke-static {p0, p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->p(Lio/github/giangpham96/expandable_textview/ExpandableTextView;Z)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public setMaxLines(I)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    iget v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->s:I

    .line 5
    .line 6
    if-gt v0, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "\n                maxLines ("

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ") must be greater than or equal to limitedMaxLines ("

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "). \n                maxLines can be -1 if there is no upper limit for lineCount.\n            "

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lkotlin/text/a;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-static {p0, p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->p(Lio/github/giangpham96/expandable_textview/ExpandableTextView;Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final setOriginalText(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->q:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-static {p0, p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->p(Lio/github/giangpham96/expandable_textview/ExpandableTextView;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final toggle()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->q:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->z:Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->u:Z

    .line 12
    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iput-boolean v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->u:Z

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-boolean v1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->u:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->q:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->z:Ljava/lang/CharSequence;

    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/high16 v2, 0x40000000    # 2.0f

    .line 39
    .line 40
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->w:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 65
    .line 66
    .line 67
    :cond_2
    sub-int v2, v1, v0

    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    int-to-long v2, v2

    .line 74
    const-wide/16 v4, 0x2

    .line 75
    .line 76
    mul-long/2addr v2, v4

    .line 77
    const-wide/16 v4, 0x12c

    .line 78
    .line 79
    invoke-static {v2, v3, v4, v5}, LM5/g;->coerceAtMost(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    filled-new-array {v0, v1}, [I

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Lh0/b;

    .line 92
    .line 93
    invoke-direct {v1}, Lh0/b;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    .line 101
    .line 102
    new-instance v1, LA3/a;

    .line 103
    .line 104
    const/4 v2, 0x5

    .line 105
    invoke-direct {v1, p0, v2}, LA3/a;-><init>(Ljava/lang/Object;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Li5/a;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Li5/a;-><init>(Lio/github/giangpham96/expandable_textview/ExpandableTextView;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->w:Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    return-void
.end method
