.class public final Landroidx/fragment/app/d0;
.super Ld/b;
.source "SourceFile"


# virtual methods
.method public createIntent(Landroid/content/Context;Landroidx/activity/result/m;)Landroid/content/Intent;
    .locals 3

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroidx/activity/result/m;->getFillInIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    const-string v1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 7
    const-string v1, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Landroidx/activity/result/j;

    invoke-virtual {p2}, Landroidx/activity/result/m;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/activity/result/j;-><init>(Landroid/content/IntentSender;)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroidx/activity/result/j;->setFillInIntent(Landroid/content/Intent;)Landroidx/activity/result/j;

    move-result-object v0

    .line 10
    invoke-virtual {p2}, Landroidx/activity/result/m;->getFlagsValues()I

    move-result v1

    invoke-virtual {p2}, Landroidx/activity/result/m;->getFlagsMask()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroidx/activity/result/j;->setFlags(II)Landroidx/activity/result/j;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroidx/activity/result/j;->build()Landroidx/activity/result/m;

    move-result-object p2

    .line 12
    :cond_0
    const-string v0, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x2

    .line 13
    invoke-static {p2}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "CreateIntent created the following intent: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FragmentManager"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 1
    check-cast p2, Landroidx/activity/result/m;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/d0;->createIntent(Landroid/content/Context;Landroidx/activity/result/m;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public parseResult(ILandroid/content/Intent;)Landroidx/activity/result/b;
    .locals 1

    .line 2
    new-instance v0, Landroidx/activity/result/b;

    invoke-direct {v0, p1, p2}, Landroidx/activity/result/b;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/d0;->parseResult(ILandroid/content/Intent;)Landroidx/activity/result/b;

    move-result-object p1

    return-object p1
.end method
