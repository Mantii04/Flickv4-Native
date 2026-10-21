.class public final Le0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le0/j;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "textView cannot be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, LL/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance p2, Le0/k;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Le0/k;-><init>(Landroid/widget/TextView;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Le0/l;->a:Le0/j;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p2, Le0/i;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Le0/i;-><init>(Landroid/widget/TextView;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Le0/l;->a:Le0/j;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/l;->a:Le0/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Le0/j;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le0/l;->a:Le0/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Le0/j;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le0/l;->a:Le0/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Le0/j;->b(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le0/l;->a:Le0/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Le0/j;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/l;->a:Le0/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Le0/j;->d(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
