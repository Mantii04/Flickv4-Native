.class public final Landroidx/mediarouter/app/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final b:Landroidx/mediarouter/app/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/mediarouter/app/k0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/mediarouter/app/k0;->b:Landroidx/mediarouter/app/k0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public compare(Lf1/U;Lf1/U;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lf1/U;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lf1/U;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lf1/U;

    check-cast p2, Lf1/U;

    invoke-virtual {p0, p1, p2}, Landroidx/mediarouter/app/k0;->compare(Lf1/U;Lf1/U;)I

    move-result p1

    return p1
.end method
