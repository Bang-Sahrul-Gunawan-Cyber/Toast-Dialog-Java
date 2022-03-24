.class public LmasterX/goblok/ehmaaf/OoOo;
.super Ljava/lang/Object;
.source "OoOo.java"


# static fields
.field private static final showTime:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 132
    const-string v1, ""

    .line 134
    :try_start_2
    invoke-static {p1}, LmasterX/goblok/ehmaaf/OoOo;->generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 135
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 136
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 137
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 138
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 139
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 142
    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    move-object v0, v1

    goto :goto_20
.end method

.method private static generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 124
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 125
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 126
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 127
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 128
    return-object v1
.end method

.method public static get(Landroid/content/Context;)V
    .registers 14

    .prologue
    .line 25
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ShowBlahBlahBotX"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1ed

    .line 26
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShowBlahBlahBotX"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "ShowBlahBlahBotX"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 29
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v8, "cjlue1CdlCwThWUa17sMTChPm3usHOdxBiCQrkD2tjZnbgqS1VeqJp/x5W9OUPVsWY8SL1np+01Hn4j++dQpkUt9LmpHct5JBOn+Wk7dioHKV3foKKNlOV3y7sWwWibi"

    const-string v9, "𝑺𝑨𝑯𝑹𝑼𝑳 𝑮𝑼𝑵𝑨𝑾𝑨𝑵 𝑪𝒀𝑩𝑬𝑹 𝑵𝑶𝑻𝑬 "

    invoke-static {v8, v9}, LmasterX/goblok/ehmaaf/OoOo;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 38
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const-string v8, "c4F/aR0tC1ADUcNTTzS9mGf1iZtKMi39IqZmqFVuh1Vd1UXJZUeZvD+ojaVXbgVYCFbto2kuYMg+BPzJL8XQfqr5YtxVjGcmGdJC1RS49qxG4Hx/hY1GMXNSE8aoGb9Lmh9lPjez+9wZuhpwT7Xz4AEi07bKj7Ahndy2jfOYgymt+NZ2ZV5jWjmou8Bx9PQ6olvFcgPr/lDVMMMQetkKiL2DirVbDdPc6t7cr+d7uZCAd3gc6pAAmQE1800Z5yU2epY0Vt1fDpgsYmVljaQWIpEDxbl4YXrJ1LuyeSch/7OwQa4QiSk9qNTlTThqSyDFPWrldjYPbPX7BzJgXZvooBiQlA0jTkEJ49yNqPb2QDr2Um/A7eKKodlL7g1Kk5rBt3yeZQ55f3VnU4yqGM7u1fA+nl2J9A+YEDbNsjQovrtyxkTVeDfiIv0Oh4Og07WMQFHFy2qnv1K1l3mylK9YFS8C9QZN9pn7+n1spxM4xlgVtWICtQ+ITdzrowZOqgSyvHDar3RZY7RSS/Hlgu4z+i+/BHHM9Y0u5UgdqN2N/IXjA0t7SS7ds2kh0GJQNXnL"

    const-string v9, "𝚂𝙴𝙻𝙰𝙼𝙰𝚃 𝙳𝙰𝚃𝙰𝙽𝙶 𝙳𝙸 𝙰𝙿𝙻𝙸𝙺𝙰𝚂𝙸 𝙼𝙾𝙳 𝙱𝚈 𝚂𝙰𝙷𝚁𝚄𝙻 𝙶𝚄𝙽𝙰𝚆𝙰𝙽 𝙲𝚈𝙱𝙴𝚁 𝙽𝙸𝙺𝙼𝙰𝚃𝙸 𝙵𝙸𝚃𝚄𝚁 𝙼𝙾𝙳 𝚃𝙰𝙽𝙿𝙰 𝙱𝙰𝚃𝙰𝚂 𝚆𝙰𝙺𝚃𝚄 𝙹𝙰𝙽𝙶𝙰𝙽 𝙻𝚄𝙿𝙰 𝙵𝙾𝙻𝙻𝙾𝚆 𝙼𝚈 𝙸𝙽𝚂𝚃𝙰𝙶𝚁𝙰𝙼"

    invoke-static {v8, v9}, LmasterX/goblok/ehmaaf/OoOo;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const-string v8, "wncqQAwvSwb0xaN0Jf8VKZOZOt9ybnK3u5CvNlkuQPs="

    const-string v9, "❎ 𝐁𝐀𝐓𝐀𝐋 ❎"

    invoke-static {v8, v9}, LmasterX/goblok/ehmaaf/OoOo;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const-string v8, "4Slqrh7isGhgXAS7VJK8Xh/hyCgFWfR/KQbepb1LnaTfmy4PQDVTd2gKxtEk8Gn5"

    const-string v9, "✅ 𝐋𝐀𝐍𝐉𝐔𝐓 ✅"

    invoke-static {v8, v9}, LmasterX/goblok/ehmaaf/OoOo;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 47
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x32

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 50
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    const v8, 0x11

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    const v8, 0x3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x32

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    const/high16 v8, 0x41900000  # 18.0f

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    const-string v8, "red"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    :try_start_c7
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "title.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "message.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "button.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "button.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ff} :catch_1ee

    .line 68
    :goto_ff
    const/high16 v8, 0x41800000  # 16.0f

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    const-string v8, "black"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    const/high16 v8, 0x41700000  # 15.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 71
    const/16 v8, 0x14

    const/4 v9, 0x0

    const/16 v10, 0x14

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 72
    const-string v8, "blue"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    const/high16 v8, 0x41700000  # 15.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/16 v10, 0x1e

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 75
    const-string v8, "blue"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    const/16 v9, 0x10

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 79
    const/high16 v9, 0x3f800000  # 1.0f

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 80
    const/16 v9, 0x14

    const/4 v10, 0x0

    const/16 v11, 0x14

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 81
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    const/4 v10, 0x5

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 83
    const/high16 v10, 0x3f800000  # 1.0f

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 84
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    const v9, 0x3

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 88
    const/4 v5, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 89
    const/4 v5, 0x2

    invoke-virtual {v4, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 90
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 91
    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 92
    const/4 v2, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 93
    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/16 v5, 0x32

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 95
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 96
    new-instance v2, LmasterX/goblok/ehmaaf/OoOo$1;

    invoke-direct {v2}, LmasterX/goblok/ehmaaf/OoOo$1;-><init>()V

    const/16 v3, 0x14

    const-string v4, "white"

    invoke-virtual {v2, v3, v4}, LmasterX/goblok/ehmaaf/OoOo$1;->getIns(ILjava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v5, 0x14

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 104
    new-instance v1, LmasterX/goblok/ehmaaf/OoOo$2;

    invoke-direct {v1, v0, p0}, LmasterX/goblok/ehmaaf/OoOo$2;-><init>(Landroid/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v1, LmasterX/goblok/ehmaaf/OoOo$3;

    invoke-direct {v1, v0}, LmasterX/goblok/ehmaaf/OoOo$3;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 121
    :cond_1ed
    return-void

    .line 63
    :catch_1ee
    move-exception v8

    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 64
    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 65
    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 66
    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_ff
.end method
