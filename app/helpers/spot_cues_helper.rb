module SpotCuesHelper

  def background_color_for_cue_type(cue_type)
    case cue_type
    when "Song"
      "#6495ed"
    when "Scene"
      "#ff69b4"
    else
      "#ffffff"
    end
  end

  def style_for_changed_parameter(current, previous, parameter)
    current.public_send(parameter) == previous&.public_send(parameter) ? '' : 'background: #ffe8eb'
  end
end
