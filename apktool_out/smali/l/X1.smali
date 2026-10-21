.class public final Ll/X1;
.super Landroid/util/Property;
.source "SourceFile"


# virtual methods
.method public get(Landroidx/appcompat/widget/SwitchCompat;)Ljava/lang/Float;
    .locals 0

    .line 2
    iget p1, p1, Landroidx/appcompat/widget/SwitchCompat;->I:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Ll/X1;->get(Landroidx/appcompat/widget/SwitchCompat;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroidx/appcompat/widget/SwitchCompat;Ljava/lang/Float;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Ll/X1;->set(Landroidx/appcompat/widget/SwitchCompat;Ljava/lang/Float;)V

    return-void
.end method
