# Procurement Demo - Mack Agent Flow Mockup

Interactive HTML mockup demonstrating the procurement agent for construction general contractors.

## Product Overview

**Mack** is an email-based procurement agent that helps general contractors (GCs) source materials. The user communicates via email while Mack handles vendor research, outreach, negotiation, and order coordination in the background.

**Agent Email**: mack@procure.it (can be changed)

**Value Proposition**: Mack contacts 5-10 vendors vs the 1-3 a GC typically has time for, getting better pricing through broader comparison and negotiation.

## Demo Scenario

| Field | Value |
|-------|-------|
| GC | Dana at Sunrise Homes |
| Project | Single-family home, 2,400 sq ft |
| Location | 42 Coventry Lane, Windham, NH 03087 |
| Timeline | ~1 month total, 1 week for vendor communications |
| Ground break | March 15th |
| Material deadline | March 10th |

## Demo Flow (8 Chapters)

1. **Initial Request** (Feb 20) - Dana emails Mack with architecture plans and materials list
2. **Research Begins** (Feb 20) - Mack parses 127 line items, identifies 9 vendors, submits contact forms
3. **Vendor Quotes** (Feb 21-24) - 8 vendors respond, user CC'd on all communications
4. **Negotiation** (Feb 25-26) - Mack negotiates free delivery + net-30 terms with Granite Grove
5. **Recommendation** (Feb 27) - Comparison spreadsheet attached, 3 vendors recommended, $4,200 savings
6. **Approval & Orders** (Feb 27) - Dana approves, Mack confirms with all vendors
7. **Invoices Confirmed** (Feb 28) - All deliveries scheduled before deadline
8. **Scope Change** (Week 4) - Sunroom addition leveraging existing vendor relationships

## Fictional Vendors (Alliterative Names)

### Lumber/General
- Granite Grove Lumber (Derry, NH) - 8 mi
- Pinnacle Pine Supply (Salem, NH) - 12 mi
- Timber Trail Building Supply (Nashua, NH) - 18 mi
- Concord Contractor Supply (Concord, NH) - 31 mi

### Foundation/Concrete
- Footing First Supply (Manchester, NH) - 15 mi
- Bedrock Building Materials (Lowell, MA) - 22 mi

### Windows/Doors
- Pane & Panel Co. (Londonderry, NH) - 10 mi
- Clear Choice Windows (Haverhill, MA) - 28 mi
- Doorway Direct (Nashua, NH) - 19 mi

## UI Design Specs

| Element | Specification |
|---------|---------------|
| Layout | 70% user email view, 30% agent backstage |
| Email styling | Gmail-like with avatars, sender info |
| Tables | Google Sheets style for vendor comparisons |
| Fonts | Google Sans (headers), Roboto (body), IBM Plex Mono (prices) |
| Navigation | Timeline-based labels (e.g., "Feb 20 • Request") |
| Timestamps | Shown in backstage activity log |

## Key Features to Demonstrate

- User CC'd on all vendor communications (transparency)
- Comparison documents attached to recommendations
- Price negotiation leveraging volume/relationship
- Backorder warnings flagged proactively
- Existing vendor relationships used for reorders
- Net-30 terms negotiated as bonus

## Agent Communication Style

- **Signoff**: Minimal "– Mack" or action-oriented "On it. – Mack"
- **Tone**: Professional, concise, proactive
- **Format**: Clear bullet points, tables for comparisons

## Future Features (Not in MVP)

- Audit log UI showing all agent tasks and communications
- Real-time status dashboard
- Text message support (in addition to email)

## Files

| File | Purpose |
|------|---------|
| `index.html` | Main mockup with Gmail styling, 70/30 split, Sheets tables |
| `mack-flow-mockup-v2.html` | Earlier version (can be deleted) |

## Editing the Demo

The HTML is self-contained. To modify:

1. **Change copy**: Search for text strings in the HTML and replace
2. **Change agent name**: Replace "Mack" and "mack@procure.it" throughout
3. **Change colors**: Edit CSS variables in `:root` at top of file
4. **Change scenario**: Update vendor names, project details, email content

### Figma Import

Use the [html.to.design](https://www.figma.com/community/plugin/1159123024924461424) plugin:
1. Install plugin in Figma
2. Open plugin → "Editor" tab
3. Paste HTML code or upload file
4. Click Import → all elements become editable Figma frames

Note: Chapter navigation (JS) won't work in Figma, but each chapter imports as a separate frame.
