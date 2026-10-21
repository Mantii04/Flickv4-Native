.class public Lme/grantland/widget/AutofitTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lc6/c;


# instance fields
.field public final b:Lme/grantland/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p0, p2, p1}, Lme/grantland/widget/a;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lme/grantland/widget/a;->addOnTextSizeChangeListener(Lc6/c;)Lme/grantland/widget/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lme/grantland/widget/AutofitTextView;->b:Lme/grantland/widget/a;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getAutofitHelper()Lme/grantland/widget/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->b:Lme/grantland/widget/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->b:Lme/grantland/widget/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lme/grantland/widget/a;->getMaxTextSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->b:Lme/grantland/widget/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lme/grantland/widget/a;->getMinTextSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPrecision()F
    .locals 1

    .line 1
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->b:Lme/grantland/widget/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lme/grantland/widget/a;->getPrecision()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onTextSizeChange(FF)V
    .locals 0

    return-void
.end method

.method public setLines(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->b:Lme/grantland/widget/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lme/grantland/widget/a;->setMaxLines(I)Lme/grantland/widget/a;

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->b:Lme/grantland/widget/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lme/grantland/widget/a;->setMaxLines(I)Lme/grantland/widget/a;

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->b:Lme/grantland/widget/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lme/grantland/widget/a;->setMaxTextSize(F)Lme/grantland/widget/a;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinTextSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->b:Lme/grantland/widget/a;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    int-to-float p1, p1

    .line 5
    invoke-virtual {v0, v1, p1}, Lme/grantland/widget/a;->setMinTextSize(IF)Lme/grantland/widget/a;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPrecision(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->b:Lme/grantland/widget/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lme/grantland/widget/a;->setPrecision(F)Lme/grantland/widget/a;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSizeToFit(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->b:Lme/grantland/widget/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lme/grantland/widget/a;->setEnabled(Z)Lme/grantland/widget/a;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->b:Lme/grantland/widget/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lme/grantland/widget/a;->setTextSize(IF)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
