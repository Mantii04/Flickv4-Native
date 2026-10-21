.class public final Li5/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/github/giangpham96/expandable_textview/ExpandableTextView;


# direct methods
.method public constructor <init>(Lio/github/giangpham96/expandable_textview/ExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li5/a;->a:Lio/github/giangpham96/expandable_textview/ExpandableTextView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Li5/a;->a:Lio/github/giangpham96/expandable_textview/ExpandableTextView;

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->getCollapsed()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->access$getCollapsedDisplayedText$p(Lio/github/giangpham96/expandable_textview/ExpandableTextView;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->getOriginalText()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, -0x2

    .line 38
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Li5/a;->a:Lio/github/giangpham96/expandable_textview/ExpandableTextView;

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->getCollapsed()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    invoke-static {p1, v0}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->access$setCollapsed$p(Lio/github/giangpham96/expandable_textview/ExpandableTextView;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->getOriginalText()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
