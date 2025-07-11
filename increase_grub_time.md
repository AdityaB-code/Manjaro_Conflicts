Got it — here’s how you can increase the GRUB bootloader timer on Manjaro:

```bash
sudo nano /etc/default/grub
```

➡️ Find the line:

```
GRUB_TIMEOUT=5
```

➡️ Change `5` to the number of seconds you want (e.g., `10`).

Then **save** and **update GRUB**:

```bash
sudo update-grub
```

✅ Done — the next boot will use the new timer!
