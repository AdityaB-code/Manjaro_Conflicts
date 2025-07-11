Got it — your system is set to **auto-login** right now. To **disable auto-login** and get a login screen (like SDDM or LightDM) on Manjaro, do this:

**For SDDM (default for KDE):**

1️⃣ Edit the SDDM config:

```bash
sudo nano /etc/sddm.conf
```

2️⃣ Look for these lines:

```
[Autologin]
User=your_username
Session=your_session
```

3️⃣ **Remove** or **comment out** (`#`) these lines, or set them to empty:

```
[Autologin]
#User=
#Session=
```

4️⃣ Save and reboot:

```bash
sudo systemctl restart sddm
```

**For LightDM (XFCE, etc.):**

1️⃣ Edit LightDM config:

```bash
sudo nano /etc/lightdm/lightdm.conf
```

2️⃣ Find the line:

```
autologin-user=your_username
```

3️⃣ Comment it out:

```
#autologin-user=
```

4️⃣ Save and reboot:

```bash
sudo systemctl restart lightdm
```

You’ll now get your login screen before X11 starts. ✅
