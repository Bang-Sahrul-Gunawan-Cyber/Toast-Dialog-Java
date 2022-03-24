.class LmasterX/goblok/ehmaaf/OoOo$1;
.super Landroid/graphics/drawable/GradientDrawable;
.source "OoOo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LmasterX/goblok/ehmaaf/OoOo;->get(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getIns(ILjava/lang/String;)Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .prologue
    .line 96
    int-to-float v0, p1

    invoke-virtual {p0, v0}, LmasterX/goblok/ehmaaf/OoOo$1;->setCornerRadius(F)V

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, LmasterX/goblok/ehmaaf/OoOo$1;->setColor(I)V

    return-object p0
.end method
