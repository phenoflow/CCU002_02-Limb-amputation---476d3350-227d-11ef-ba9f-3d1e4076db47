cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_02-limb-amputation---nonstandard:
    run: ccu002_02-limb-amputation---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  ccu002_02-limb-amputation-disarticulation---nonstandard:
    run: ccu002_02-limb-amputation-disarticulation---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation---nonstandard/output
  ccu002_02-limb-amputation-midfoot---nonstandard:
    run: ccu002_02-limb-amputation-midfoot---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-disarticulation---nonstandard/output
  above-ccu002_02-limb-amputation---nonstandard:
    run: above-ccu002_02-limb-amputation---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-midfoot---nonstandard/output
  upper-ccu002_02-limb-amputation---nonstandard:
    run: upper-ccu002_02-limb-amputation---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: above-ccu002_02-limb-amputation---nonstandard/output
  ccu002_02-limb-amputation-metatarsal---nonstandard:
    run: ccu002_02-limb-amputation-metatarsal---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: upper-ccu002_02-limb-amputation---nonstandard/output
  ccu002_02-limb-amputation-lesser---nonstandard:
    run: ccu002_02-limb-amputation-lesser---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-metatarsal---nonstandard/output
  ccu002_02-limb-amputation-terminalisation---nonstandard:
    run: ccu002_02-limb-amputation-terminalisation---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-lesser---nonstandard/output
  partial-ccu002_02-limb-amputation---nonstandard:
    run: partial-ccu002_02-limb-amputation---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-terminalisation---nonstandard/output
  ccu002_02-limb-amputation-reeducation---nonstandard:
    run: ccu002_02-limb-amputation-reeducation---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: partial-ccu002_02-limb-amputation---nonstandard/output
  ccu002_02-limb-amputation-amputee---nonstandard:
    run: ccu002_02-limb-amputation-amputee---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-reeducation---nonstandard/output
  ccu002_02-limb-amputation-forefoot---nonstandard:
    run: ccu002_02-limb-amputation-forefoot---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-amputee---nonstandard/output
  ccu002_02-limb-amputation-phalanx---nonstandard:
    run: ccu002_02-limb-amputation-phalanx---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-forefoot---nonstandard/output
  limb---nonstandard:
    run: limb---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-phalanx---nonstandard/output
  ccu002_02-limb-amputation-hindquarter---nonstandard:
    run: ccu002_02-limb-amputation-hindquarter---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: limb---nonstandard/output
  right-ccu002_02-limb-amputation---nonstandard:
    run: right-ccu002_02-limb-amputation---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-hindquarter---nonstandard/output
  ccu002_02-limb-amputation-thigh---nonstandard:
    run: ccu002_02-limb-amputation-thigh---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: right-ccu002_02-limb-amputation---nonstandard/output
  ccu002_02-limb-amputation-prosthesis---nonstandard:
    run: ccu002_02-limb-amputation-prosthesis---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-thigh---nonstandard/output
  ccu002_02-limb-amputation-practice---nonstandard:
    run: ccu002_02-limb-amputation-practice---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-prosthesis---nonstandard/output
  ccu002_02-limb-amputation-hallux---nonstandard:
    run: ccu002_02-limb-amputation-hallux---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-practice---nonstandard/output
  ccu002_02-limb-amputation-stump---nonstandard:
    run: ccu002_02-limb-amputation-stump---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-hallux---nonstandard/output
  below-ccu002_02-limb-amputation---nonstandard:
    run: below-ccu002_02-limb-amputation---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-stump---nonstandard/output
  ccu002_02-limb-amputation-ankle---nonstandard:
    run: ccu002_02-limb-amputation-ankle---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: below-ccu002_02-limb-amputation---nonstandard/output
  lower-ccu002_02-limb-amputation---nonstandard:
    run: lower-ccu002_02-limb-amputation---nonstandard.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ccu002_02-limb-amputation-ankle---nonstandard/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: lower-ccu002_02-limb-amputation---nonstandard/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
