.class public Landroidx/leanback/widget/SpeechOrbView;
.super Landroidx/leanback/widget/SearchOrbView;
.source "SourceFile"


# instance fields
.field public final C:F

.field public D:Landroidx/leanback/widget/e1;

.field public E:Landroidx/leanback/widget/e1;

.field public F:I

.field public G:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Landroidx/leanback/widget/SpeechOrbView;->F:I

    .line 4
    iput-boolean p2, p0, Landroidx/leanback/widget/SpeechOrbView;->G:Z

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 6
    sget p3, Landroidx/leanback/R$fraction;->lb_search_bar_speech_orb_max_level_zoom:I

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, p3, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p3

    iput p3, p0, Landroidx/leanback/widget/SpeechOrbView;->C:F

    .line 8
    new-instance p3, Landroidx/leanback/widget/e1;

    sget v0, Landroidx/leanback/R$color;->lb_speech_orb_not_recording:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget v1, Landroidx/leanback/R$color;->lb_speech_orb_not_recording_pulsed:I

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget v2, Landroidx/leanback/R$color;->lb_speech_orb_not_recording_icon:I

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p3, v0, v1, v2}, Landroidx/leanback/widget/e1;-><init>(III)V

    iput-object p3, p0, Landroidx/leanback/widget/SpeechOrbView;->E:Landroidx/leanback/widget/e1;

    .line 11
    new-instance p3, Landroidx/leanback/widget/e1;

    sget v0, Landroidx/leanback/R$color;->lb_speech_orb_recording:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget v1, Landroidx/leanback/R$color;->lb_speech_orb_recording:I

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p3, v0, p1, p2}, Landroidx/leanback/widget/e1;-><init>(III)V

    iput-object p3, p0, Landroidx/leanback/widget/SpeechOrbView;->D:Landroidx/leanback/widget/e1;

    .line 13
    invoke-virtual {p0}, Landroidx/leanback/widget/SpeechOrbView;->showNotListening()V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    .line 1
    sget v0, Landroidx/leanback/R$layout;->lb_speech_orb:I

    .line 2
    .line 3
    return v0
.end method

.method public setListeningOrbColors(Landroidx/leanback/widget/e1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SpeechOrbView;->D:Landroidx/leanback/widget/e1;

    .line 2
    .line 3
    return-void
.end method

.method public setNotListeningOrbColors(Landroidx/leanback/widget/e1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SpeechOrbView;->E:Landroidx/leanback/widget/e1;

    .line 2
    .line 3
    return-void
.end method

.method public setSoundLevel(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/SpeechOrbView;->G:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/SpeechOrbView;->F:I

    .line 7
    .line 8
    if-le p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {p1, v0, v1, v0}, Lb/c;->c(IIII)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Landroidx/leanback/widget/SpeechOrbView;->F:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    int-to-float p1, v0

    .line 19
    const v0, 0x3f333333    # 0.7f

    .line 20
    .line 21
    .line 22
    mul-float/2addr p1, v0

    .line 23
    float-to-int p1, p1

    .line 24
    iput p1, p0, Landroidx/leanback/widget/SpeechOrbView;->F:I

    .line 25
    .line 26
    :goto_0
    iget p1, p0, Landroidx/leanback/widget/SpeechOrbView;->C:F

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->getFocusedZoom()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sub-float/2addr p1, v0

    .line 33
    iget v0, p0, Landroidx/leanback/widget/SpeechOrbView;->F:I

    .line 34
    .line 35
    int-to-float v0, v0

    .line 36
    mul-float/2addr p1, v0

    .line 37
    const/high16 v0, 0x42c80000    # 100.0f

    .line 38
    .line 39
    div-float/2addr p1, v0

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    .line 42
    add-float/2addr p1, v0

    .line 43
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->f:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public showListening()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/SpeechOrbView;->D:Landroidx/leanback/widget/e1;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/e1;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Landroidx/leanback/R$drawable;->lb_ic_search_mic:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->a(Z)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Landroidx/leanback/widget/SearchOrbView;->f:Landroid/view/View;

    .line 28
    .line 29
    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 35
    .line 36
    .line 37
    iput v1, p0, Landroidx/leanback/widget/SpeechOrbView;->F:I

    .line 38
    .line 39
    iput-boolean v0, p0, Landroidx/leanback/widget/SpeechOrbView;->G:Z

    .line 40
    .line 41
    return-void
.end method

.method public showNotListening()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/SpeechOrbView;->E:Landroidx/leanback/widget/e1;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/e1;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Landroidx/leanback/R$drawable;->lb_ic_search_mic_out:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->a(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->f:Landroid/view/View;

    .line 27
    .line 28
    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Landroidx/leanback/widget/SpeechOrbView;->G:Z

    .line 38
    .line 39
    return-void
.end method
