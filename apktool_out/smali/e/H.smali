.class public final Le/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d;


# instance fields
.field public final synthetic a:Le/a0;


# direct methods
.method public constructor <init>(Le/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le/H;->a:Le/a0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Le/H;->a:Le/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Le/a0;->getSupportActionBar()Le/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Le/b;->getThemedContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Le/a0;->t:Landroid/content/Context;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    return-object v1
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/H;->getActionBarThemedContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Landroidx/appcompat/R$attr;->homeAsUpIndicator:I

    .line 6
    .line 7
    filled-new-array {v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2, v1}, Ll/e2;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ll/e2;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Ll/e2;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Ll/e2;->recycle()V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public isNavigationVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/H;->a:Le/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Le/a0;->getSupportActionBar()Le/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Le/b;->getDisplayOptions()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/lit8 v0, v0, 0x4

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public setActionBarDescription(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/H;->a:Le/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Le/a0;->getSupportActionBar()Le/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Le/b;->setHomeActionContentDescription(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/H;->a:Le/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Le/a0;->getSupportActionBar()Le/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Le/b;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Le/b;->setHomeActionContentDescription(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
