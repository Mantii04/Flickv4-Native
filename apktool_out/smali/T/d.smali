.class public final LT/d;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field public a:LT/c;


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    check-cast p1, Landroid/database/Cursor;

    .line 2
    .line 3
    iget-object v0, p0, LT/d;->a:LT/c;

    .line 4
    .line 5
    check-cast v0, Ll/W1;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ll/W1;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2

    .line 1
    iget-object v0, p0, LT/d;->a:LT/c;

    .line 2
    .line 3
    check-cast v0, Ll/W1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ll/W1;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Landroid/widget/Filter$FilterResults;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 21
    .line 22
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 30
    .line 31
    return-object v0
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 1
    iget-object p1, p0, LT/d;->a:LT/c;

    .line 2
    .line 3
    invoke-virtual {p1}, LT/c;->getCursor()Landroid/database/Cursor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    check-cast p2, Landroid/database/Cursor;

    .line 14
    .line 15
    check-cast p1, Ll/W1;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ll/W1;->changeCursor(Landroid/database/Cursor;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
